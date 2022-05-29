import 'dart:ui';
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
    on<ModifyStrokeSizeEvent>((event, emit) {});
    on<ChangeStrokeSizeSelectionEvent>((event, emit) {});
    on<ChangePencilStrokeColorSelectionEvent>((event, emit) {
      final newColors = state.colors.selectItem(event.index);
      _scribbleNotifier.setColor(newColors.currentItem!);
      emit(state.copyWith(colors: newColors));
    });
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
  }
}
