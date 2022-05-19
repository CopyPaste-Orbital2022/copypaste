import 'package:flutter/material.dart';

import '../../../../core/utilities/menubar_icons_icons.dart';

enum DrawingTool {
  /// when the pen tool is currently active
  pen,
  eraser,
  hand,
}

extension DrawingToolX on DrawingTool {
  /// returns the [name] of the SelectableTool
  String get name {
    switch (this) {
      case DrawingTool.pen:
        return "pen";
      case DrawingTool.eraser:
        return "eraser";
      default:
        return "hand";
    }
  }

  /// returns a [DrawingTool] instance with the given [name]
  static DrawingTool fromString(String name) {
    switch (name) {
      case "pen":
        return DrawingTool.pen;
      case "eraser":
        return DrawingTool.eraser;
      default:
        return DrawingTool.hand;
    }
  }

  /// returns the [IconData] of the current tool
  IconData get icon {
    switch (this) {
      case DrawingTool.pen:
        return MenubarIcons.pen;
      case DrawingTool.eraser:
        return MenubarIcons.eraser;
      default:
        return Icons.handshake;
    }
  }

  /// The modelKey - should be depricated
  static const String modelKey = "selectable-tool";
}
