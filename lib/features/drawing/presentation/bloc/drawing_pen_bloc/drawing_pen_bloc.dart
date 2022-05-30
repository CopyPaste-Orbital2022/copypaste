import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';
import 'package:scribble/scribble.dart';
import 'package:selectable_items/selectable_items.dart';

part 'drawing_pen_state.dart';

part 'drawing_pen_event.dart';

part 'drawing_pen_bloc.freezed.dart';

@LazySingleton()
class DrawingPenBloc extends Bloc<DrawingPenEvent, DrawingPenState> {
  final ScribbleNotifier _scribbleNotifier;
  DrawingPenBloc(this._scribbleNotifier)
      : super(DrawingPencilStateX.initial()) {
    // handling stroke size modifying event
    on<ChangePenStrokeSizeValueEvent>((event, emit) {
      _scribbleNotifier.setStrokeWidth(event.newSize);
      emit(
        state.copyWith(
          widths: state.widths.modifyItem(
            state.widths.currentIndex,
            event.newSize,
          ),
        ),
      );
    });

    // handling stroke size selection event
    on<ChangePenStrokeSizeSelectionEvent>((event, emit) {
      final newWidths = state.widths.selectItem(event.index);
      _scribbleNotifier.setStrokeWidth(newWidths.currentItem!);
      emit(
        state.copyWith(
          widths: newWidths,
        ),
      );
    });

    // handling stroke color selection event
    on<ChangePenStrokeColorSelectionEvent>((event, emit) {
      final newColors = state.colors.selectItem(event.index);
      _scribbleNotifier.setColor(newColors.currentItem!);
      emit(state.copyWith(colors: newColors));
    });

    // handling stroke color value change event
    on<ChangePenCurrentColorValueEvent>((event, emit) {
      final newColors =
          state.colors.modifyItem(state.colors.currentIndex, event.color);
      _scribbleNotifier.setColor(newColors.currentItem!);
      emit(state.copyWith(colors: newColors));
    });
    on<PenDuplicateCurrentColorEvent>((event, emit) {
      final newColors = state.colors.insertItem(state.colors.currentItem!);
      _scribbleNotifier.setColor(newColors.currentItem!);
      emit(state.copyWith(colors: newColors));
    });

    on<PenDeleteCurrentColorEvent>((event, emit) {
      final newColors = state.colors.deleteItem(state.colors.currentIndex);
      _scribbleNotifier.setColor(newColors.currentItem!);
      emit(state.copyWith(colors: newColors));
    });

    on<ShowPenErrorSnackbarEvent>((event, emit) {
      emit(state.copyWith(errorMessage: event.message));
    });

    on<DismissPenErrorSnackbarEvent>((event, emit) {
      emit(state.copyWith(errorMessage: null));
    });
  }
}
