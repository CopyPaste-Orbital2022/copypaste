import 'package:copy_with_annotation/copy_with_annotation.dart';

part 'pen_entity.g.dart';

@CopyWith()
class PenEntity {
  PenEntity({
    required bool showRuler,
    required List<int> colors,
    required int currentColorIdx,
    required bool useStylus,
    required double width,
    required double pressureSensitivity,
    required double speedSensitivity,
    required double tiltSensitivity,
  });
}
