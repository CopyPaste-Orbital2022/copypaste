import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';
import 'package:scribble/scribble.dart';
import 'package:selectable_items/selectable_items.dart';

part "drawing_pencil_state.dart";

part "drawing_pencil_event.dart";

part "drawing_pencil_bloc.freezed.dart";

@LazySingleton()
class DrawingPencilBloc extends Bloc<DrawingPencilEvent, DrawingPencilState> {
  final ScribbleNotifier _scribbleNotifier;
  DrawingPencilBloc(this._scribbleNotifier)
      : super(DrawingPencilStateX.initial()) {
    // handling stroke size modifying event
    on<ChangePencilStrokeSizeValueEvent>((event, emit) {
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
    on<ChangePencilStrokeSizeSelectionEvent>((event, emit) {
      final newWidths = state.widths.selectItem(event.index);
      _scribbleNotifier.setStrokeWidth(newWidths.currentItem!);
      emit(
        state.copyWith(
          widths: newWidths,
        ),
      );
    });

    // handling stroke color selection event
    on<ChangePencilStrokeColorSelectionEvent>((event, emit) {
      final newColors = state.colors.selectItem(event.index);
      _scribbleNotifier.setColor(newColors.currentItem!);
      emit(state.copyWith(colors: newColors));
    });

    // handling stroke color value change event
    on<ChangePencilCurrentColorValueEvent>((event, emit) {
      final newColors =
          state.colors.modifyItem(state.colors.currentIndex, event.color);
      _scribbleNotifier.setColor(newColors.currentItem!);
      emit(state.copyWith(colors: newColors));
    });
    on<PencilDuplicateCurrentColorEvent>((event, emit) {
      final newColors = state.colors.insertItem(state.colors.currentItem!);
      _scribbleNotifier.setColor(newColors.currentItem!);
      emit(state.copyWith(colors: newColors));
    });

    on<PencilDeleteCurrentColorEvent>((event, emit) {
      final newColors = state.colors.deleteItem(state.colors.currentIndex);
      _scribbleNotifier.setColor(newColors.currentItem!);
      emit(state.copyWith(colors: newColors));
    });

    on<ShowPencilErrorSnackbarEvent>((event, emit) {
      emit(state.copyWith(errorMessage: event.message));
    });

    on<DismissPencilErrorSnackbarEvent>((event, emit) {
      emit(state.copyWith(errorMessage: null));
    });
  }
}
