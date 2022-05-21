import 'package:copypaste/core/extensions/scribble_extension.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scribble/scribble.dart';
import '../../../../core/injections/injection.dart';
import '../../domain/entities/eraser_state.dart';
import '../../domain/entities/pen_state.dart';
import '../../domain/entities/selectable_tools.dart';
import '../../domain/repositories/i_drawing_toolbar_repository.dart';

part 'drawing_toolbar_state.freezed.dart';

@freezed
abstract class DrawingToolbarState with _$DrawingToolbarState {
  const factory DrawingToolbarState({
    required DrawingTool currentTool,
    required PenState penState,
    required EraserState eraserState,
  }) = _DrawingToolbarState;
}

extension DrawingToolbarStateX on DrawingToolbarState {
  static DrawingToolbarState initialState() {
    final IDrawingToolBarRepository repository =
        getIt<IDrawingToolBarRepository>();
    // gets the saved status from the repo
    final DrawingTool currentTool = repository.getCurrentTool();
    final EraserState eraserState = repository.getEraserState();
    final PenState penState = repository.getPenState();
    // updates the notifier after all widgets are initialized
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        final ScribbleNotifier notifier = getIt<ScribbleNotifier>();
        // note that set color also sets the state to pen state, hence set color should be run before the switchTo command
        notifier.setColor(penState.getCurrentColor());
        notifier.switchTo(tool: currentTool);
      },
    );
    // returns the state
    return DrawingToolbarState(
      currentTool: currentTool,
      penState: penState,
      eraserState: eraserState,
    );
  }
}
