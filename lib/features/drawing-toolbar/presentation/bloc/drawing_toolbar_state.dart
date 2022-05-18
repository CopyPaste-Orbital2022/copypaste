import '../../../../core/injections/injection.dart';
import '../../domain/entities/eraser_state.dart';
import '../../domain/entities/pen_state.dart';
import '../../domain/entities/selectable_tools.dart';
import '../../domain/repositories/i_drawing_toolbar_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    final DrawingTool currentTool = repository.getCurrentTool();
    final EraserState eraserState = repository.getEraserState();
    final PenState penState = repository.getPenState();
    return DrawingToolbarState(
      currentTool: currentTool,
      penState: penState,
      eraserState: eraserState,
    );
  }
}
