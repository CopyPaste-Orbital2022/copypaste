import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pen_state.freezed.dart';

/// The state of the pen
///
/// [currentColorIdx] - the index of the current color among the colors
///
/// [colors] - the list of the colors
///
/// [useStylus] - whether if the user is using a stylus
///
/// [size] - the width of a pen
@freezed
class PenState with _$PenState {
  const factory PenState({
    required int currentColorIdx,
    required List<Color> colors,
    required bool useStylus,
    required int currentWidthIdx,
    required List<double> widths,
  }) = _PenState;
}

extension PenStateX on PenState {
  Color getCurrentColor() {
    return colors[currentColorIdx];
  }

  double getCurrentWidth() {
    return widths[currentWidthIdx];
  }
}
