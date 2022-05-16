import 'package:copypaste/features/drawing/domain/entities/eraser_state.dart';
import 'package:copypaste/features/drawing/domain/entities/pen_state.dart';
import 'package:copypaste/features/drawing/domain/entities/selectable_tools.dart';

abstract class IDrawingToolBarRepository {
  /// Returns the currently selected tool;
  DrawingTool getCurrentTool();

  /// Saves the [tool] as the currently selected tool in the shared prefs
  void saveCurrentTool(DrawingTool tool);

  /// Returns the state for the pen
  PenState getPenState();

  /// Saves the [state] of the pen
  void savePenState(PenState state);

  /// Returns the state of the eraser
  EraserState getEraserState();

  /// Saves the [state] of the eraser
  void saveEraserState(EraserState state);
}
