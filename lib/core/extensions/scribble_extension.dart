import '../../features/drawing/domain/entities/drawing_tools.dart';
import 'package:scribble/scribble.dart';

import '../../features/drawing/domain/entities/selectable_param.dart';

extension ScribbleNotifierX on ScribbleNotifier {
  /// Updates the current tool to match the [tool]
  void switchTo({
    required DrawingTool tool,
    required bool useStylus,
    required PenColorSelectable penColorSelectable,
    required PenWidthSelectable penWidthSelectable,
    required EraserWidthSelectable eraserWidthSelectable,
  }) {
    switch (tool) {
      case DrawingTool.pen:
        _updatePointerMode(useStylus);
        setColor(penColorSelectable.selectedItem);
        setStrokeWidth(penWidthSelectable.selectedItem);
        break;
      case DrawingTool.eraser:
        _updatePointerMode(useStylus);
        setStrokeWidth(eraserWidthSelectable.selectedItem);
        setEraser();
        break;
      case DrawingTool.hand:
        setAllowedPointersMode(ScribblePointerMode.none);
    }
  }

  /// Updates the pointer mode to match the [useStylus] status
  void _updatePointerMode(bool useStylus) {
    if (useStylus) {
      setAllowedPointersMode(ScribblePointerMode.penOnly);
    } else {
      setAllowedPointersMode(ScribblePointerMode.all);
    }
  }
}
