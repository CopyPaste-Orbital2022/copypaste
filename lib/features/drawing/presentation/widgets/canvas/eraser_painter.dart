import 'package:flutter/material.dart';

class EraserPainter extends CustomPainter {
  final Offset? eraserPosition;
  final double eraserRadius;

  EraserPainter({
    required this.eraserPosition,
    required this.eraserRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (eraserPosition == null) {
      return;
    }
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = eraserRadius
      ..style = PaintingStyle.fill;
    final borderPaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;
    // draw a circle at the eraser's position with the eraser's radius
    canvas.drawCircle(
      eraserPosition!,
      eraserRadius,
      paint,
    );
    // draw a border around the circle
    canvas.drawCircle(
      eraserPosition!,
      eraserRadius,
      borderPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
