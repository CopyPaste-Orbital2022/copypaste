import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing-toolbar/domain/entities/eraser_state.dart';
import 'package:copypaste/features/drawing-toolbar/domain/entities/pen_state.dart';
import 'package:copypaste/features/drawing-toolbar/domain/entities/selectable_tools.dart';
import 'package:copypaste/features/drawing-toolbar/domain/repositories/i_drawing_toolbar_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_toolbar_state.freezed.dart';

@freezed
abstract class DrawingState with _$DrawingState {
  const factory DrawingState({
    required DrawingTool currentTool,
    required PenState penState,
    required EraserState eraserState,
  }) = _DrawingState;
}

extension DrawingStateX on DrawingState {
  static DrawingState initialState() {
    final IDrawingToolBarRepository repository =
        getIt<IDrawingToolBarRepository>();
    final DrawingTool currentTool = repository.getCurrentTool();
    final EraserState eraserState = repository.getEraserState();
    final PenState penState = repository.getPenState();
    return DrawingState(
      currentTool: currentTool,
      penState: penState,
      eraserState: eraserState,
    );
  }
}
