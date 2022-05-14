import 'package:copypaste/features/drawing/data/models/eraser_model.dart';
import 'package:copypaste/features/drawing/data/models/pen_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:copypaste/features/drawing/domain/entities/eraser_entity.dart';
import 'package:copypaste/features/drawing/domain/entities/pen_entity.dart';
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

  // ! below are some HUGELY INEFFICIENT code
  // ! fix this later
  @override
  EraserEntity getEraserEntity() {
    final String radiusKey = generateKey(
        featurePrefix: featurePrefix,
        modelPrefix: EraserModel.prefix,
        propertyName: "radius");
    final String isPartialKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: EraserModel.prefix,
      propertyName: "is-partial",
    );
    final double radius =
        prefs.getElseSet(radiusKey, EraserModel.defaultRadius);
    final bool isPartial =
        prefs.getElseSet(isPartialKey, EraserModel.defaultIsPartial);
    return EraserModel(radius: radius, isPartial: isPartial).toDomain();
  }

  @override
  PenEntity getPenEntity() {
    final String currentColorIdxKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenModel.prefix,
      propertyName: "current-color-index",
    );
    final String colorsKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenModel.prefix,
      propertyName: "colors",
    );
    final String useStylusKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenModel.prefix,
      propertyName: "use-stylus",
    );
    final String widthKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenModel.prefix,
      propertyName: "width",
    );
    final int currentColorIdx = prefs.getElseSet(
      currentColorIdxKey,
      PenModel.defaultCurrentColorIdx,
    );
    final List<String> colors = prefs.getElseSet(
      colorsKey,
      PenModel.defaultColors,
    );
    final bool useStylus = prefs.getElseSet(
      useStylusKey,
      PenModel.defaultUseStylus,
    );
    final double width = prefs.getElseSet(widthKey, PenModel.defaultWidth);
    return PenModel(
      currentColorIdx: currentColorIdx,
      colors: colors,
      useStylus: useStylus,
      width: width,
    ).toDomain();
  }

  @override
  void saveEraserEntity(EraserEntity entity) {
    final String radiusKey = generateKey(
        featurePrefix: featurePrefix,
        modelPrefix: EraserModel.prefix,
        propertyName: "radius");
    final String isPartialKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: EraserModel.prefix,
      propertyName: "is-partial",
    );
    prefs.setDouble(radiusKey, entity.radius);
    prefs.setBool(isPartialKey, entity.isPartial);
  }

  @override
  void savePenEntity(PenEntity entity) {
    final String currentColorIdxKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenModel.prefix,
      propertyName: "current-color-index",
    );
    final String colorsKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenModel.prefix,
      propertyName: "colors",
    );
    final String useStylusKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenModel.prefix,
      propertyName: "use-stylus",
    );
    final String widthKey = generateKey(
      featurePrefix: featurePrefix,
      modelPrefix: PenModel.prefix,
      propertyName: "width",
    );
    PenModel model = PenModel.fromDomain(entity);
    prefs.setInt(currentColorIdxKey, model.currentColorIdx);
    prefs.setStringList(colorsKey, model.colors);
    prefs.setBool(useStylusKey, model.useStylus);
    prefs.setDouble(widthKey, model.width);
  }
}
