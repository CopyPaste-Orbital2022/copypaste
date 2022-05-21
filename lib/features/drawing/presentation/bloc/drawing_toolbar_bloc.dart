import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/i_drawing_toolbar_repository.dart';
import 'drawing_toolbar_event.dart';
import 'drawing_toolbar_state.dart';

@LazySingleton()
class DrawingToolbarBloc
    extends Bloc<DrawingToolbarEvent, DrawingToolbarState> {
  final IDrawingToolBarRepository _repository;
  DrawingToolbarBloc(this._repository)
      : super(DrawingToolbarStateX.initialState()) {
    // when the primary tool is changed
    on<ChangeDrawingButtonSelectionEvent>((event, emit) {
      _repository.saveCurrentTool(event.tool);
      emit(
        state.copyWith(currentTool: event.tool),
      );
    });

    // when the color selection is changed
    on<ChangeColorSelectionEvent>((event, emit) {
      _repository.savePenState(
        state.penState.copyWith(
          currentColorIdx: event.colorIndex,
        ),
      );
      emit(
        state.copyWith(
          penState: state.penState.copyWith(
            currentColorIdx: event.colorIndex,
          ),
        ),
      );
    });

    // when a color is changed
    on<ChangeColorValueEvent>((event, emit) {
      List<Color> colors = List.from(state.penState.colors);
      colors[event.colorIndex] = event.currentColor;
      final DrawingToolbarState tmpState = state.copyWith(
        penState: state.penState.copyWith(
          colors: colors,
        ),
      );
      _repository.savePenState(tmpState.penState);
      emit(tmpState);
    });

    // when adds a color
    on<AddColorEvent>(
      (event, emit) {
        List<Color> colors = List.from(state.penState.colors);
        colors.add(event.color);
        final DrawingToolbarState tmpState = state.copyWith(
          penState: state.penState.copyWith(
            colors: colors,
          ),
        );
        _repository.savePenState(tmpState.penState);
        emit(tmpState);
      },
    );

    // when deletes a color
    on<DeleteColorEvent>(
      (event, emit) {
        final List<Color> colors = state.penState.colors
            .asMap()
            .entries
            .where((element) => element.key != event.colorIndex)
            .map((e) => e.value)
            .toList();

        final DrawingToolbarState tmpState = state.copyWith(
          penState: state.penState.copyWith(
            colors: colors,
            currentColorIdx: state.penState.currentColorIdx > 0
                ? state.penState.currentColorIdx
                : 0,
          ),
        );
        _repository.savePenState(tmpState.penState);
        emit(tmpState);
      },
    );
  }
}
