import 'sp_point.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

part 'sp_stroke.freezed.dart';

@freezed
abstract class SPStroke with _$SPStroke {
  const factory SPStroke({
    required String id,
    required int index,
    required double size,
    required Color color,
    @Default([]) List<SPPoint> points,
    @Default(false) bool isComplete,
    List<SPPoint>? cachedBorderPoints,
    required double thinning, // check
    required double smoothing, // check
    required double streamline, // check
    required double taperStart, // check
    required double taperEnd, // check
    required bool capStart,
    required bool capEnd,
    required bool simulatePressure,
  }) = _SPStroke;
}

extension SPStrokeX on SPStroke {
  /// Add a point to the stroke.
  SPStroke addPoint(SPPoint point) {
    return copyWith(
      points: List.from(points)..add(point),
    );
  }

  /// Finish the stroke.
  SPStroke finish() {
    final finished = copyWith(isComplete: true);
    return finished.cacheBorderPoints();
  }

  /// Gets the border points of the stroke.
  List<SPPoint> get borderPoints {
    if (cachedBorderPoints != null) {
      return cachedBorderPoints!;
    } else {
      final rawPoints = getStroke(
        points.map((e) => e.point).toList(),
        size: size,
        taperStart: taperStart,
        taperEnd: taperEnd,
        smoothing: smoothing,
        thinning: thinning,
        streamline: streamline,
        isComplete: isComplete,
        capStart: capStart,
        capEnd: capEnd,
        simulatePressure: simulatePressure,
      );
      List<SPPoint> res = [];
      for (int i = 0; i < rawPoints.length; i++) {
        res.add(SPPointX.fromPoint(rawPoints[i], i));
      }
      return res;
    }
  }

  /// cache the border points of the stroke.
  SPStroke cacheBorderPoints() {
    return copyWith(
      cachedBorderPoints: borderPoints,
    );
  }
}
