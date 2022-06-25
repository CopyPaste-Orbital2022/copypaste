import 'dart:ui';

import 'sp_point_model.dart';
import '../../domain/entities/sp_stroke.dart';
import '../../domain/entities/sp_point.dart';

extension SPStrokeModel on SPStroke {
  // to json
  Map<String, dynamic> toJson() => {
        'id': id,
        'size': size,
        'color': color.value,
        'points': points.map((e) => e.toJson()).toList(),
        'isComplete': isComplete,
        'cachedBorderPoints':
            cachedBorderPoints?.map((e) => e.toJson()).toList(),
        'thinning': thinning,
        'smoothing': smoothing,
        'streamline': streamline,
        'taperStart': taperStart,
        'taperEnd': taperEnd,
        'capStart': capStart,
        'capEnd': capEnd,
        'simulatePressure': simulatePressure,
      };

  // from json
  static SPStroke fromJson(Map<String, dynamic> json) => SPStroke(
        id: json['id'] as String,
        size: json['size'] as double,
        color: Color(json['color'] as int),
        points: (json['points'] as List)
            .map((e) => SPPointModel.fromJson(e as Map<String, dynamic>))
            .toList() as List<SPPoint>,
        isComplete: json['isComplete'] as bool,
        cachedBorderPoints: (json['cachedBorderPoints'] as List)
            .map((e) => PointX.fromJson(e as Map<String, dynamic>))
            .toList(),
        thinning: json['thinning'] as double,
        smoothing: json['smoothing'] as double,
        streamline: json['streamline'] as double,
        taperStart: json['taperStart'] as double,
        taperEnd: json['taperEnd'] as double,
        capStart: json['capStart'] as bool,
        capEnd: json['capEnd'] as bool,
        simulatePressure: json['simulatePressure'] as bool,
      );
}
