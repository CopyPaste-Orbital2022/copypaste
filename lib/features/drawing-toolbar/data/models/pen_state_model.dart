import 'dart:ui';

import 'package:copypaste/features/drawing-toolbar/domain/entities/pen_state.dart';

class PenStateModel {
  final int currentColorIdx;
  static const int defaultCurrentColorIdx = 0;
  final List<String> colors;
  static const List<String> defaultColors = ["0xFF00000000"];
  final bool useStylus;
  static const bool defaultUseStylus = false;
  final double width;
  static const double defaultWidth = 1.0;

  PenStateModel({
    required this.currentColorIdx,
    required this.colors,
    required this.useStylus,
    required this.width,
  });

  /// converts to domain
  PenState toDomain() {
    return PenState(
      currentColorIdx: currentColorIdx,
      colors: _stringsToColors(colors),
      useStylus: useStylus,
      width: width,
    );
  }

  /// converts from domain
  static PenStateModel fromDomain(PenState penEntity) {
    return PenStateModel(
      currentColorIdx: penEntity.currentColorIdx,
      colors: _colorsToStrings(penEntity.colors),
      useStylus: penEntity.useStylus,
      width: penEntity.width,
    );
  }

  /// converts a list of Colors [cls] to a list of Strings
  static List<String> _colorsToStrings(List<Color> cls) {
    return cls.map((e) => e.value.toString()).toList();
  }

  /// converts a list of Strings [strs] to a list of Colors
  static List<Color> _stringsToColors(List<String> strs) {
    return strs.map((e) => Color(int.parse(e))).toList();
  }

  /// The model prefix
  static const String prefix = "pen";
}
