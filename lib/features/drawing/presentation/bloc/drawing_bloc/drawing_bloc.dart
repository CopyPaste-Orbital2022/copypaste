import 'dart:developer' as developer;
import 'dart:math';
import 'dart:ui';
import 'package:copypaste/features/drawing/domain/repository/i_sp_drawing_repository.dart';
import 'package:copypaste/features/drawing/domain/usecases/add_stroke.dart';
import 'package:copypaste/features/drawing/domain/usecases/delete_stroke.dart';
import 'package:copypaste/features/drawing/domain/usecases/open_drawing.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import '../../../../../core/injections/injection.dart';
import '../history_manager_bloc/history_manager_bloc.dart';
import '../history_manager_bloc/history_state.dart';
import '../pen_settings_bloc/pen_settings_bloc.dart';
import '../../../domain/entities/sp_point.dart';
import '../selectable_bloc/blocs/current_tool_bloc.dart';
import '../selectable_bloc/blocs/eraser_width_bloc.dart';
import '../selectable_bloc/blocs/pen_color_bloc.dart';
import '../selectable_bloc/blocs/pen_width_bloc.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';
import '../../../domain/entities/sp_stroke.dart';
import '../../enums/drawing_button.dart';
part "drawing_state.dart";
part "drawing_event.dart";
part "drawing_bloc.freezed.dart";

@LazySingleton()
class DrawingBloc extends Bloc<DrawingEvent, DrawingState> {
  final CurrentToolBloc currentToolBloc;
  final PenWidthBloc penWidthBloc;
  final PenColorBloc penColorBloc;
  final EraserWidthBloc eraserWidthBloc;
  final PenSettingsBloc penSettingsBloc;
  final AddStrokeUsecase addStrokeUsecase;
  final DeleteStrokeUsecase deleteStrokeUsecase;
  final OpenDrawingUsecase openDrawingUsecase;
  final ISPDrawingRepository drawingRepository;

  int? _pointer;

  DrawingBloc({
    required this.currentToolBloc,
    required this.penColorBloc,
    required this.penWidthBloc,
    required this.eraserWidthBloc,
    required this.penSettingsBloc,
    required this.addStrokeUsecase,
    required this.deleteStrokeUsecase,
    required this.openDrawingUsecase,
    required this.drawingRepository,
  }) : super(DrawingStateX.initial()) {
    // sets the event handlers
    on<DrawingEvent>((event, emit) async {
      await event.map(
        initial: (event) async => await handleInitialEvent(event, emit),
        pointerDown: (event) async => await handlePointerEvent(event.event, emit, {
          DrawingButtonType.pen: startDrawing,
          DrawingButtonType.eraser: erase,
        }),
        pointerMove: (event) async => await handlePointerEvent(event.event, emit, {
          DrawingButtonType.pen: updateDrawing,
          DrawingButtonType.eraser: erase,
        }),
        pointerUp: (event) async => await handlePointerEvent(event.event, emit, {
          DrawingButtonType.pen: endDrawing,
          DrawingButtonType.eraser: finishErase,
        }),
        pointerCancel: (event) async => await handlePointerEvent(event.event, emit, {
          DrawingButtonType.pen: endDrawing,
          DrawingButtonType.eraser: finishErase,
        }),
        setState: (event) async => emit(event.state),
      );
    });
  }

  DrawingButtonType? get currentTool => currentToolBloc.selected;

  // event handlers

  Future<void> handleInitialEvent(
    DrawingEventInitial event,
    Emitter<DrawingState> emit,
  ) async {
    final failureOrStrokes = await openDrawingUsecase(event.drawing);
    failureOrStrokes.fold((l) {
      // TODO: handle error
    }, (strokes) {
      emit(state.copyWith(strokes: strokes));
    });
    getIt<HistoryManagerBloc>().add(HistoryManagerEvent.clear());
    getIt<HistoryManagerBloc>().add(HistoryManagerEvent.push(state));
  }

  bool get useStylus => penSettingsBloc.state.useStylus;

  Future<void> handlePointerEvent(PointerEvent event, Emitter emit,
      Map<DrawingButtonType, Future<void> Function(PointerEvent, Emitter)> handlers) async {
    // for drawing and erasing, we only want to recognize a single pointer
    // so we only handle the event if it's the same pointer
    if (event.pointer != _pointer && _pointer != null) {
      return;
    }
    // if the event is a pointer down event, we want to store the pointer
    // so we can later recognize it as a single pointer
    if (event is PointerDownEvent && _pointer == null) {
      _pointer = event.pointer;
    }
    // if the event is a pointer up event or a pointer cancel event,
    // we want to clear the pointer so we can recognize a new pointer
    else if (event is PointerUpEvent || event is PointerCancelEvent) {
      _pointer = null;
    }
    // if useStylus is true, we want to ignore all pointer events that
    // aren't stylus events
    if (useStylus) {
      if (event.kind != PointerDeviceKind.stylus || event.kind != PointerDeviceKind.invertedStylus) {
        return;
      }
    }
    if (handlers.containsKey(currentTool!)) {
      await handlers[currentTool!]!(event, emit);
    }
  }

  // stroke actions

  Color get penColor => penColorBloc.selected!;

  double get penWidth => penWidthBloc.selected!;

  Future<void> startDrawing(PointerEvent event, Emitter emit) async {
    // create the point
    final SPPoint point = SPPoint(
      index: 0,
      offset: event.localPosition,
      pressure: event.pressure,
    );

    // create the stroke
    final SPStroke stroke = SPStroke(
      points: [point],
      isComplete: false,
      size: penWidth,
      color: penColor,
      thinning: penSettingsBloc.state.thinning,
      smoothing: penSettingsBloc.state.smoothing,
      streamline: penSettingsBloc.state.streamline,
      taperStart: penSettingsBloc.state.taperStart,
      taperEnd: penSettingsBloc.state.taperEnd,
      capStart: penSettingsBloc.state.capStart,
      capEnd: penSettingsBloc.state.capEnd,
      simulatePressure: penSettingsBloc.state.useStylus,
    );
    // emits the current stroke
    emit(state.copyWith(currentStroke: stroke));
  }

  Future<void> updateDrawing(PointerEvent event, Emitter emit) async {
    // create the point
    final SPPoint point = SPPoint(
      index: state.currentStroke!.points.length,
      offset: event.localPosition,
      pressure: event.pressure,
    );
    // emits the state with the new point added
    emit(
      state.copyWith(
        currentStroke: state.currentStroke!.copyWith(
          points: List.from(state.currentStroke!.points)..add(point),
        ),
      ),
    );
  }

  Future<void> endDrawing(PointerEvent event, Emitter emit) async {
    // create the point
    final SPPoint point = SPPoint(
      index: state.currentStroke!.points.length,
      offset: event.localPosition,
      pressure: event.pressure,
    );
    // emits the state with the new point added
    final completedStroke = state.currentStroke!.copyWith(
      points: List.from(state.currentStroke!.points)..add(point),
      isComplete: true,
    );
    // caching the border points

    await addStrokeUsecase(completedStroke);
    final newState = state.copyWith(
      currentStroke: null,
      strokes: List.from(state.strokes)..add(completedStroke),
    );
    getIt<HistoryManagerBloc>().add(HistoryManagerEvent.push(newState));
    emit(newState);
  }

  void cancelDrawing(PointerEvent event, Emitter emit) {
    // dismiss everything that's inputed
    emit(state.copyWith(currentStroke: null));
  }

  // erasing actions

  /// the [eraserRadius]
  ///
  /// note that the [eraserWidthBloc] stores the diameter but not the actual eraser width
  double get eraserRadius => eraserWidthBloc.selected! / 2;

  Future<void> erase(PointerEvent event, Emitter emit) async {
    final List<SPStroke> remainingStrokes = [];
    for (final stroke in state.strokes) {
      bool shouldErase = false;
      for (final point in stroke.borderPoints) {
        final dx = event.localPosition.dx - point.x;
        final dy = event.localPosition.dy - point.y;
        final distance = sqrt(dx * dx + dy * dy);
        if (distance < eraserRadius) {
          shouldErase = true;
          break;
        }
      }
      if (shouldErase) {
        await deleteStrokeUsecase(stroke);
      } else {
        remainingStrokes.add(stroke);
      }
    }
    // update the history
    // emit the state
    emit(
      state.copyWith(
        eraserPosition: event.localPosition,
        strokes: remainingStrokes,
      ),
    );

    // gets the strokes from the database
    // this can help keep the data in sync
  }

  Future<void> finishErase(PointerEvent event, Emitter emit) async {
    emit(
      state.copyWith(eraserPosition: null),
    );
  }
}
