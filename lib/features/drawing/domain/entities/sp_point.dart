import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

part 'sp_point.freezed.dart';

@freezed
abstract class SPPoint with _$SPPoint {
  const factory SPPoint({
    required Offset offset,
    required double pressure,
  }) = _SPPoint;
}

extension SPPointX on SPPoint {
  /// Get the x coordinate of the point.
  double get dx => offset.dx;

  /// Get the y coordinate of the point.
  double get dy => offset.dy;

  /// Get the [Point] from the [SPPoint].
  Point get point => Point(dx, dy, pressure);
}
