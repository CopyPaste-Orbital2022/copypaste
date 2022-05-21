import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:copypaste/core/extensions/scribble_extension.dart';
import 'package:copypaste/features/drawing/domain/entities/pen_state.dart';
import 'package:injectable/injectable.dart';
import 'package:scribble/scribble.dart';

import '../../domain/repositories/i_drawing_toolbar_repository.dart';
import 'drawing_toolbar_event.dart';
import 'drawing_toolbar_state.dart';

@LazySingleton()
class DrawingToolbarBloc
    extends Bloc<DrawingToolbarEvent, DrawingToolbarState> {
  final IDrawingToolBarRepository _repository;
  final ScribbleNotifier _notifier;
  DrawingToolbarBloc(this._repository, this._notifier)
      : super(DrawingToolbarStateX.initialState()) {
    // when the primary tool is changed
    on<ChangeDrawingButtonSelectionEvent>((event, emit) {
      // saves the state in repo
      _repository.saveCurrentTool(event.tool);
      // updates the notifier
      _notifier.setAllowedPointersMode(state.allowedPointerMode);
      _notifier.switchTo(tool: event.tool);
      // emits the state
      emit(
        state.copyWith(currentTool: event.tool),
      );
    });

    // when the color selection is changed
    on<ChangeColorSelectionEvent>((event, emit) {
      // saves the new pen state
      _repository.savePenState(
        state.penState.copyWith(
          currentColorIdx: event.colorIndex,
        ),
      );
      // sets the color
      _notifier.setColor(
        state.penState.colors[event.colorIndex],
      );
      // emits the state
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

    // when changes the width selection
    on<ChangeStrokeWidthSelectionEvent>(
      (event, emit) {
        // gets the width value
        final double width = state.penState.widths[event.widthIndex];
        // changes the stroke width accordingly
        _notifier.setStrokeWidth(width);
        // emits the state
        emit(state.copyWith(
          penState: state.penState.copyWith(
            currentWidthIdx: event.widthIndex,
          ),
        ));
      },
    );
  }
}
