import 'dart:ui';

import 'package:perfect_freehand/perfect_freehand.dart';

import '../../domain/entities/sp_point.dart';

extension SPPointModel on SPPoint {
  // to json
  Map<String, dynamic> toJson() {
    return {
      'dx': dx,
      'dy': dy,
      'pressure': pressure,
    };
  }

  // from json
  static fromJson(Map<String, dynamic> json) {
    return SPPoint(
      offset: Offset(json['dx'], json['dy']),
      pressure: json['pressure'],
    );
  }
}

extension PointX on Point {
  // to json
  Map<String, dynamic> toJson() {
    return {
      'x': x,
      'y': y,
      'p': p,
    };
  }

  // from json
  static Point fromJson(Map<String, dynamic> json) {
    return Point(json['x'], json['y'], json['p']);
  }
}
