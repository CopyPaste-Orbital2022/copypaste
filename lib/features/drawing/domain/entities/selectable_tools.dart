import 'package:flutter/material.dart';

enum SelectableTools { pen, eraser }

extension SelectableToolsX on SelectableTools {
  String get name {
    switch (this) {
      case SelectableTools.pen:
        return "pen";
      case SelectableTools.eraser:
        return "eraser";
      default:
        return "pen";
    }
  }

  static SelectableTools fromString(String name) {
    switch (name) {
      case "pen":
        return SelectableTools.pen;
      case "eraser":
        return SelectableTools.eraser;
      default:
        return SelectableTools.pen;
    }
  }

  IconData get icon {
    switch (this) {
      case SelectableTools.pen:
        return Icons.brush;
      case SelectableTools.eraser:
        return Icons.highlight;
      default:
        return Icons.brush;
    }
  }
}
