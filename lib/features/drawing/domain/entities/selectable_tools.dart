import 'package:copypaste/core/utilities/menubar_icons_icons.dart';
import 'package:flutter/material.dart';

enum SelectableTools {
  pen,
  eraser,
  hand,
}

extension SelectableToolsX on SelectableTools {
  String get name {
    switch (this) {
      case SelectableTools.pen:
        return "pen";
      case SelectableTools.eraser:
        return "eraser";
      default:
        return "hand";
    }
  }

  static SelectableTools fromString(String name) {
    switch (name) {
      case "pen":
        return SelectableTools.pen;
      case "eraser":
        return SelectableTools.eraser;
      default:
        return SelectableTools.hand;
    }
  }

  IconData get icon {
    switch (this) {
      case SelectableTools.pen:
        return MenubarIcons.pen;
      case SelectableTools.eraser:
        return MenubarIcons.eraser;
      default:
        return Icons.handshake;
    }
  }
}
