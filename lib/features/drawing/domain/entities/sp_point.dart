import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:perfect_freehand/perfect_freehand.dart';
import 'package:uuid/uuid.dart';

part 'sp_point.freezed.dart';

@freezed
class SPPoint with _$SPPoint {
  const factory SPPoint({
    required String id,
    required int index,
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

  /// from point
  static SPPoint fromPoint(Point point, int index) {
    return SPPoint(
      id: const Uuid().v4(),
      index: index,
      offset: Offset(point.x, point.y),
      pressure: point.p,
    );
  }
}
