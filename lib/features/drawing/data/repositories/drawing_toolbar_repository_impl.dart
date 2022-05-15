import 'package:copypaste/features/drawing/data/models/eraser_state_model.dart';
import 'package:copypaste/features/drawing/data/models/pen_state_model.dart';
import 'package:copypaste/features/drawing/domain/entities/selectable_tools.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:copypaste/features/drawing/domain/entities/eraser_state.dart';
import 'package:copypaste/features/drawing/domain/entities/pen_state.dart';
import 'package:copypaste/features/drawing/domain/repositories/i_drawing_toolbar_repository.dart';
import 'package:copypaste/core/extensions/shared_preferences_extension.dart';

import '../../../../core/utilities/generate_key.dart';

@LazySingleton(as: IDrawingToolBarRepository)
class DrawingToolbarRepositoryImpl implements IDrawingToolBarRepository {
  /// prefix
  static const String featurePrefix = "drawing-tool-bar";

  /// data source
  SharedPreferences prefs;

  /// constructor
  DrawingToolbarRepositoryImpl({
    required this.prefs,
  });

  // TODO: Fix the inefficient code below later -> replace with constant
  // TODO: (continued) key instead of the current functions
  @override
  DrawingTool getCurrentTool() {
    final String selectableToolKey = generateKey(
        featurePrefix: featurePrefix,
        modelPrefix: DrawingToolX.modelKey,
        propertyName: "current-tool");
    return DrawingToolX.fromString(
        prefs.getElseSet(selectableToolKey, DrawingTool.hand.name));
  }

  @override
  void saveCurrentTool(DrawingTool tool) {
    final String selectableToolKey = generateKey(
        featurePrefix: featurePrefix,
        modelPrefix: DrawingToolX.modelKey,
        propertyName: "current-tool");
    prefs.setString(selectableToolKey, tool.name);
  }

  @override
  EraserState getEraserState() {
    final String radiusKey = generateKey(
        featurePrefix: featurePrefix,
        modelPrefix: EraserStateModel.prefix,
        propertyName: "radius");
    final String isPartialKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: EraserStateModel.prefix,
      propertyName: "is-partial",
    );
    final double radius =
        prefs.getElseSet(radiusKey, EraserStateModel.defaultRadius);
    final bool isPartial =
        prefs.getElseSet(isPartialKey, EraserStateModel.defaultIsPartial);
    return EraserStateModel(radius: radius, isPartial: isPartial).toDomain();
  }

  @override
  PenState getPenState() {
    final String currentColorIdxKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenStateModel.prefix,
      propertyName: "current-color-index",
    );
    final String colorsKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenStateModel.prefix,
      propertyName: "colors",
    );
    final String useStylusKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenStateModel.prefix,
      propertyName: "use-stylus",
    );
    final String widthKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenStateModel.prefix,
      propertyName: "width",
    );
    final int currentColorIdx = prefs.getElseSet(
      currentColorIdxKey,
      PenStateModel.defaultCurrentColorIdx,
    );
    final List<String> colors = prefs.getElseSet(
      colorsKey,
      PenStateModel.defaultColors,
    );
    final bool useStylus = prefs.getElseSet(
      useStylusKey,
      PenStateModel.defaultUseStylus,
    );
    final double width = prefs.getElseSet(widthKey, PenStateModel.defaultWidth);
    return PenStateModel(
      currentColorIdx: currentColorIdx,
      colors: colors,
      useStylus: useStylus,
      width: width,
    ).toDomain();
  }

  @override
  void saveEraserState(EraserState state) {
    final String radiusKey = generateKey(
        featurePrefix: featurePrefix,
        modelPrefix: EraserStateModel.prefix,
        propertyName: "radius");
    final String isPartialKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: EraserStateModel.prefix,
      propertyName: "is-partial",
    );
    prefs.setDouble(radiusKey, state.radius);
    prefs.setBool(isPartialKey, state.isPartial);
  }

  @override
  void savePenState(PenState state) {
    final String currentColorIdxKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenStateModel.prefix,
      propertyName: "current-color-index",
    );
    final String colorsKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenStateModel.prefix,
      propertyName: "colors",
    );
    final String useStylusKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenStateModel.prefix,
      propertyName: "use-stylus",
    );
    final String widthKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenStateModel.prefix,
      propertyName: "width",
    );
    PenStateModel model = PenStateModel.fromDomain(state);
    prefs.setInt(currentColorIdxKey, model.currentColorIdx);
    prefs.setStringList(colorsKey, model.colors);
    prefs.setBool(useStylusKey, model.useStylus);
    prefs.setDouble(widthKey, model.width);
  }
}
