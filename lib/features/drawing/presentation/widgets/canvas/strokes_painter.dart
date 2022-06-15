import 'package:flutter/material.dart';

import '../../../domain/entities/sp_stroke.dart';

class StrokesPainter extends CustomPainter {
  final List<SPStroke> strokes;

  StrokesPainter(this.strokes);

  @override
  void paint(Canvas canvas, Size size) {
    if (strokes.isEmpty) {
      return;
    }
    for (final stroke in strokes) {
      paintStroke(canvas, stroke);
    }
  }

  void paintStroke(Canvas canvas, SPStroke stroke) {
    if (stroke.points.isEmpty) {
      return;
    }
    final Paint paint = Paint()
      ..color = stroke.color
      ..strokeWidth = stroke.size
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.fill;
    if (stroke.points.length <= 2 || stroke.borderPoints.length <= 2) {
      final diameter = stroke.size;
      // draw a circle with the diameter * pressure centered at the point location with the stroke color
      final point = stroke.points.first;
      canvas.drawCircle(point.offset, diameter / 2 * point.pressure, paint);
      return;
    }
    final borderPoints = stroke.borderPoints;
    final Path path = Path();
    // move to the first point
    path.moveTo(borderPoints.first.x, borderPoints.first.y);
    // draw a bezier curve from the current point to the next point
    for (int i = 1; i < borderPoints.length - 1; i++) {
      final point = borderPoints[i];
      final nextPoint = borderPoints[i + 1];
      final controlPoint = Offset(
        point.x + (nextPoint.x - point.x) / 3,
        point.y + (nextPoint.y - point.y) / 3,
      );
      path.quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, nextPoint.x, nextPoint.y);
    }
    // draw a bezier curve from the last point to the first point
    final lastPoint = borderPoints.last;
    final firstPoint = borderPoints.first;
    final controlPoint = Offset(
      lastPoint.x - (firstPoint.x - lastPoint.x) / 3,
      lastPoint.y - (firstPoint.y - lastPoint.y) / 3,
    );
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, firstPoint.x, firstPoint.y);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
