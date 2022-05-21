import 'package:copypaste/features/drawing/domain/entities/selectable_tools.dart';
import 'package:scribble/scribble.dart';

extension ScribbleNotifierX on ScribbleNotifier {
  /// Note that have to set the allowed pointer mode to match up with the state before the switchTo command. Very important!
  void switchTo({required DrawingTool tool}) {
    switch (tool) {
      case DrawingTool.pen:
        setPen();
        break;
      case DrawingTool.eraser:
        setEraser();
        break;
      case DrawingTool.hand:
        setAllowedPointersMode(ScribblePointerMode.none);
    }
  }
}
