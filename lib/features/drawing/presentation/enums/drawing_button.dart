import 'package:copypaste/features/drawing/presentation/widgets/menus/pen_menu.dart';

import '../../../../core/utilities/assets/icon_paths.dart';
import 'package:flutter/material.dart';

enum DrawingButtonType {
  pen(
    IconPaths.penFillPath,
    IconPaths.penOutlinePath,
    menuContent: PenMenu(),
  ),
  eraser(IconPaths.eraserFillPath, IconPaths.eraserOutlinePath);

  const DrawingButtonType(
    this.selectedIconPath,
    this.notSelectedIconPath, {
    this.menuContent,
  });

  final String selectedIconPath;
  final String notSelectedIconPath;
  final Widget? menuContent;
}
