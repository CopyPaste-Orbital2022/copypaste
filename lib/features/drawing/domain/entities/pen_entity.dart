class PenEntity {
  final bool showRuler;
  final List<int> colors;
  final int currentColorIdx;
  final bool useStylus;
  final double width;
  final double pressureSensitivity;
  final double speedSensitivity;
  final double tiltSensitivity;

  const PenEntity({
    required this.showRuler,
    required this.colors,
    required this.currentColorIdx,
    required this.useStylus,
    required this.width,
    required this.pressureSensitivity,
    required this.speedSensitivity,
    required this.tiltSensitivity,
  });
}
