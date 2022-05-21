import 'dart:ui';

import '../../../../core/extensions/shared_preferences_extension.dart';
import '../../domain/entities/selectable_param.dart';
import '../../domain/entities/drawing_tools.dart';
import '../../domain/repositories/i_drawing_toolbar_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/selectable_param_model.dart';

@LazySingleton(as: IDrawingToolBarRepository)
class DrawingToolbarRepositoryImpl implements IDrawingToolBarRepository {
  static const String currentToolKey = "drawing-current-tool";
  static const String eraserWidthSelectableKey =
      "drawing-eraser-width-selectable";
  static const String penWidthSelectableKey = "drawing-pen-width-selectable";
  static const String penColorSelectableKey = "drawing-pen-color-selectable";
  static const String useStylusKey = "drawing-use-stylus";

  final SharedPreferences _prefs;

  DrawingToolbarRepositoryImpl(
    this._prefs,
  );

  // current tool

  @override
  DrawingTool getCurrentTool() {
    final String currentToolStr = _prefs.getElseSet(
      currentToolKey,
      DrawingTool.hand.name,
    );
    return DrawingToolX.fromString(currentToolStr);
  }

  @override
  void saveCurrentTool(DrawingTool tool) {
    _prefs.setString(currentToolKey, tool.name);
  }

  // eraser width

  @override
  EraserWidthSelectable getEraserWidthSelectable() {
    return SelectableParamModel.fromSharedPrefs(
      eraserWidthSelectableKey,
      SelectableParamModel.defaultEraserWidthSelectableParam,
    ).toDomain();
  }

  @override
  void saveEraserWidthSelectable(EraserWidthSelectable eraserWidthSelectable) {
    SelectableParamModel.fromDomain(eraserWidthSelectable).saveToSharedPrefs(
      eraserWidthSelectableKey,
    );
  }

  // pen color

  @override
  PenColorSelectable getPenColorSelectable() {
    return SelectableParamModel.fromSharedPrefs(penColorSelectableKey,
            SelectableParamModel.defaultPenColorSelectableParam)
        .toDomain();
  }

  @override
  void savePenColorSelectable(PenColorSelectable penColorSelectable) {
    SelectableParamModel.fromDomain(penColorSelectable)
        .saveToSharedPrefs(penColorSelectableKey);
  }

  // pen width

  @override
  PenWidthSelectable getPenWidthSelectable() {
    return SelectableParamModel.fromSharedPrefs(penWidthSelectableKey,
            SelectableParamModel.defaultPenWidthSelectableParam)
        .toDomain();
  }

  @override
  void savePenWidthSelectable(PenWidthSelectable penWidthSelectable) {
    SelectableParamModel.fromDomain(penWidthSelectable)
        .saveToSharedPrefs(penWidthSelectableKey);
  }

  // use stylus

  @override
  bool getUseStylus() {
    return _prefs.getElseSet(
      useStylusKey,
      false,
    );
  }

  @override
  void saveUseStylus(bool useStylus) {
    _prefs.setBool(useStylusKey, useStylus);
  }
}
