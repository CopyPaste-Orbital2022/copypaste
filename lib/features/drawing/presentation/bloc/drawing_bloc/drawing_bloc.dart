import 'dart:ui';
import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart';
import 'package:copypaste/features/drawing/presentation/bloc/history_manager_bloc/history_state.dart';

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
  int? _pointer;

  DrawingBloc({
    required this.currentToolBloc,
    required this.penColorBloc,
    required this.penWidthBloc,
    required this.eraserWidthBloc,
  }) : super(DrawingStateX.initial()) {
    on<DrawingEvent>((event, emit) {
      event.map(
        pointerDown: (event) => handlePointerEvent(event.event, emit, {
          DrawingButtonType.pen: startDrawing,
          DrawingButtonType.eraser: erase,
        }),
        pointerMove: (event) => handlePointerEvent(event.event, emit, {
          DrawingButtonType.pen: updateDrawing,
          DrawingButtonType.eraser: erase,
        }),
        pointerUp: (event) => handlePointerEvent(event.event, emit, {
          DrawingButtonType.pen: endDrawing,
          DrawingButtonType.eraser: finishErase,
        }),
        pointerCancel: (event) => handlePointerEvent(event.event, emit, {
          DrawingButtonType.pen: endDrawing,
          DrawingButtonType.eraser: finishErase,
        }),
        setState: (event) => emit(event.state),
      );
    });
  }

  DrawingButtonType? get currentTool => currentToolBloc.selected;

  // event handlers

  bool get useStylus => state.useStylus;

  void handlePointerEvent(PointerEvent event, Emitter emit,
      Map<DrawingButtonType, void Function(PointerEvent, Emitter)> handlers) {
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
      if (event.kind != PointerDeviceKind.stylus ||
          event.kind != PointerDeviceKind.invertedStylus) {
        return;
      }
    }
    if (handlers.containsKey(currentTool!)) {
      handlers[currentTool!]!(event, emit);
    }
  }

  // stroke actions

  Color get penColor => penColorBloc.selected!;

  double get penWidth => penWidthBloc.selected!;

  void startDrawing(PointerEvent event, Emitter emit) {
    // update the state
    emit(
      state.startDrawing(
        SPPoint(
          offset: event.localPosition,
          pressure: event.pressure,
        ),
        penColor,
        penWidth,
      ),
    );
  }

  void updateDrawing(PointerEvent event, Emitter emit) {
    // update the stroke
    emit(
      state.updateDrawing(
        SPPoint(offset: event.localPosition, pressure: event.pressure),
      ),
    );
  }

  void endDrawing(PointerEvent event, Emitter emit) {
    final newState = state.endDrawing(
      SPPoint(
        offset: event.localPosition,
        pressure: event.pressure,
      ),
    );
    print("adding to history");
    print(getIt<HistoryManagerBloc>().state.stack.length);
    getIt<HistoryManagerBloc>().add(HistoryManagerEvent.push(newState));
    emit(newState);
  }

  void cancelDrawing(PointerEvent event, Emitter emit) {
    // update the state
    emit(
      state.copyWith(
        currentStroke: null,
      ),
    );
  }

  // erasing actions

  double get eraserWidth => eraserWidthBloc.selected!;

  void erase(PointerEvent event, Emitter emit) {
    final position = event.localPosition;
    final newState = state
        .copyWith(
          eraserPosition: position,
        )
        .eraseStroke(
          position,
          eraserWidth / 2,
        );
    emit(newState);
  }

  void finishErase(PointerEvent event, Emitter emit) {
    final newState = state.copyWith(
      eraserPosition: null,
    );
    print("adding to history");
    getIt<HistoryManagerBloc>().add(HistoryManagerEvent.push(newState));
    emit(newState);
  }
}
