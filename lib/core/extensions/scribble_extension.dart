import 'package:copypaste/features/drawing/domain/entities/selectable_tools.dart';
import 'package:scribble/scribble.dart';

extension ScribbleNotifierX on ScribbleNotifier {
  void switchTo({required DrawingTool tool}) {
    switch (tool) {
      case DrawingTool.pen:
        setPen();
        break;
      case DrawingTool.eraser:
        setEraser();
        break;
      case DrawingTool.hand:
        break;
    }
  }
}
