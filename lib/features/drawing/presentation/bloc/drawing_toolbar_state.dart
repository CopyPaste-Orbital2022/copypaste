import '../../../../core/extensions/scribble_extension.dart';
import '../../domain/entities/selectable_param.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scribble/scribble.dart';
import '../../../../core/injections/injection.dart';
import '../../domain/entities/drawing_tools.dart';
import '../../domain/repositories/i_drawing_toolbar_repository.dart';

part 'drawing_toolbar_state.freezed.dart';

@freezed
abstract class DrawingToolbarState with _$DrawingToolbarState {
  const factory DrawingToolbarState({
    required DrawingTool currentTool,
    required bool useStylus,
    required PenColorSelectable penColorSelectable,
    required PenWidthSelectable penWidthSelectable,
    required EraserWidthSelectable eraserWidthSelectable,
  }) = _DrawingToolbarState;
}

extension DrawingToolbarStateX on DrawingToolbarState {
  static DrawingToolbarState initialState() {
    final IDrawingToolBarRepository repository =
        getIt<IDrawingToolBarRepository>();

    // gets the relevant information from the repository
    final DrawingTool currentTool = repository.getCurrentTool();
    final bool useStylus = repository.getUseStylus();
    final PenColorSelectable penColorSelectable =
        repository.getPenColorSelectable();
    final PenWidthSelectable penWidthSelectable =
        repository.getPenWidthSelectable();
    final EraserWidthSelectable eraserWidthSelectable =
        repository.getEraserWidthSelectable();

    // updates [ScribbleNotifier] with the relevant information after the widgets are rendered
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        final ScribbleNotifier notifier = getIt<ScribbleNotifier>();
        notifier.switchTo(
          tool: currentTool,
          useStylus: useStylus,
          penColorSelectable: penColorSelectable,
          penWidthSelectable: penWidthSelectable,
          eraserWidthSelectable: eraserWidthSelectable,
        );
      },
    );
    return DrawingToolbarState(
      currentTool: currentTool,
      useStylus: useStylus,
      penColorSelectable: penColorSelectable,
      penWidthSelectable: penWidthSelectable,
      eraserWidthSelectable: eraserWidthSelectable,
    );
  }
}
