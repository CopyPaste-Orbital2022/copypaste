import 'dart:ui';

import 'package:copypaste/features/drawing/domain/entities/sp_point.dart';
import 'package:equatable/equatable.dart';

class SPPointModel extends Equatable {
  final int id;
  final double dx;
  final double dy;
  final double pressure;

  const SPPointModel({
    required this.id,
    required this.dx,
    required this.dy,
    required this.pressure,
  });

  @override
  List<Object?> get props => [dx, dy, pressure];

  /// converts to the domain layer
  SPPoint toDomain() {
    return SPPoint(id: id, offset: Offset(dx, dy), pressure: pressure);
  }

  /// converts from the domain layer
  static SPPointModel fromDomain(SPPoint point) {
    return SPPointModel(
      id: point.id,
      dx: point.dx,
      dy: point.dy,
      pressure: point.pressure,
    );
  }

  /// to json
  Map<String, Object?> toJson() {
    return {
      'id': id,
      'dx': dx,
      'dy': dy,
      'pressure': pressure,
    };
  }

  /// from json
  static SPPointModel fromJson(Map<String, dynamic> json) {
    return SPPointModel(
      id: json['id'],
      dx: json['dx'],
      dy: json['dy'],
      pressure: json['pressure'],
    );
  }
}
