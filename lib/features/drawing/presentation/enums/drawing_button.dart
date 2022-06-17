import '../../../../core/utils/icon_paths.dart';
import '../widgets/menus/color_menu.dart';
import 'package:flutter/material.dart';

enum DrawingButtonType {
  pen(
    IconPaths.penFillPath,
    IconPaths.penOutlinePath,
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
