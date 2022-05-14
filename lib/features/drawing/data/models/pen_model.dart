import 'package:copypaste/features/drawing/domain/entities/pen_entity.dart';

class PenModel extends PenEntity {
  PenModel({
    required bool showRuler,
    required List<int> colors,
    required int currentColorIdx,
    required bool useStylus,
    required double width,
    required double pressureSensitivity,
    required double speedSensitivity,
    required double tiltSensitivity,
  }) : super(
          showRuler: showRuler,
          colors: colors,
          currentColorIdx: currentColorIdx,
          useStylus: useStylus,
          width: width,
          pressureSensitivity: pressureSensitivity,
          speedSensitivity: speedSensitivity,
          tiltSensitivity: tiltSensitivity,
        );
}
