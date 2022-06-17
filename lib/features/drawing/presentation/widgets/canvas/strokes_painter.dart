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
    // 1. Get the outline points from the input points
    final outlinePoints = stroke.borderPoints;

    // 2. Render the points as a path
    final path = Path();

    if (outlinePoints.isEmpty) {
      // If the list is empty, don't do anything.
      return;
    } else if (outlinePoints.length < 2) {
      // If the list only has one point, draw a dot.
      path.addOval(Rect.fromCircle(
          center: Offset(outlinePoints[0].x, outlinePoints[0].y), radius: 1));
    } else {
      // Otherwise, draw a line that connects each point with a bezier curve segment.
      path.moveTo(outlinePoints[0].x, outlinePoints[0].y);

      for (int i = 1; i < outlinePoints.length - 1; ++i) {
        final p0 = outlinePoints[i];
        final p1 = outlinePoints[i + 1];
        path.quadraticBezierTo(
            p0.x, p0.y, (p0.x + p1.x) / 2, (p0.y + p1.y) / 2);
      }
    }

    // 3. Draw the path to the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
