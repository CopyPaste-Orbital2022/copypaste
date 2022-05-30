import '../../../../../core/injections/injection.dart';
import '../../../domain/entities/drawing_tool.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';
import 'package:scribble/scribble.dart';
import 'package:selectable_items/selectable_items.dart';

import '../drawing_pen_bloc/drawing_pen_bloc.dart';

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
            .setColor(getIt<DrawingPenBloc>().state.colors.currentItem!);
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
