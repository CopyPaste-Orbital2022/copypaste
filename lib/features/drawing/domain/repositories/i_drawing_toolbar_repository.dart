import 'dart:ui';

import '../entities/selectable_param.dart';

import '../entities/drawing_tools.dart';

abstract class IDrawingToolBarRepository {
  /// Returns the currently selected tool;
  DrawingTool getCurrentTool();

  /// Saves the [tool] as the currently selected tool in the shared prefs
  void saveCurrentTool(DrawingTool tool);

  /// Returns the useStylus status
  bool getUseStylus();

  /// Saves the useStylus status in the shared prefs
  void saveUseStylus(bool useStylus);

  /// Saves the penColorSelectable in the shared prefs
  void savePenColorSelectable(PenColorSelectable penColorSelectable);

  /// Returns the penColorSelectable
  PenColorSelectable getPenColorSelectable();

  /// Saves the penWidthSelectable in the shared prefs
  void savePenWidthSelectable(PenWidthSelectable penWidthSelectable);

  /// Returns the penWidthSelectable
  PenWidthSelectable getPenWidthSelectable();

  /// Saves the eraserWidthSelectable in the shared prefs
  void saveEraserWidthSelectable(EraserWidthSelectable eraserWidthSelectable);

  /// Returns the eraserWidthSelectable
  EraserWidthSelectable getEraserWidthSelectable();
}
