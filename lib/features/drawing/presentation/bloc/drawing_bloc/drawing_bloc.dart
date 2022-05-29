import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing/domain/entities/drawing_tool.dart';
import 'package:copypaste/features/drawing/presentation/bloc/drawing_pencil_bloc/drawing_pencil_bloc.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';
import 'package:scribble/scribble.dart';
import 'package:selectable_items/selectable_items.dart';

part "drawing_state.dart";

part "drawing_event.dart";

part "drawing_bloc.freezed.dart";

@LazySingleton()
class DrawingBloc extends Bloc<DrawingEvent, DrawingState> {
  final ScribbleNotifier _scribbleNotifier;
  DrawingBloc(this._scribbleNotifier) : super(DrawingStateX.initial()) {
    on<ChangeToolEvent>((event, emit) {
      if (event.tool == DrawingTool.eraser) {
        _scribbleNotifier.setEraser();
      } else {
        _scribbleNotifier
            .setColor(getIt<DrawingPencilBloc>().state.colors.currentItem!);
      }
      emit(state.copyWith(
        tool: event.tool,
      ));
    });
    on<ToggleUseStylusEvent>((event, emit) {
      emit(state.copyWith(
        useStylus: event.useStylus,
      ));
    });
  }
}
