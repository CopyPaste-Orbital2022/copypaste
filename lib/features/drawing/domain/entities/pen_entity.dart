import 'dart:ffi';

class PenEntity {
  PenEntity({
    required bool showRuler,
    required List<Int32> colors,
    required int currentColorIdx,
    required bool useStylus,
    required double width,
    required double pressureSensitivity,
    required double speedSensitivity,
    required double tiltSensitivity,
  });
}
