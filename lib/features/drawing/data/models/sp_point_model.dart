import 'dart:ui';

import 'package:copypaste/features/drawing/data/models/sp_stroke_model.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_point.dart';
import 'package:isar/isar.dart';
part 'sp_point_model.g.dart';

@Collection()
class SPPointModel {
  int id = Isar.autoIncrement;
  late int index;
  late double dx;
  late double dy;
  late double pressure;
  @Backlink(to: 'points')
  final stroke = IsarLink<SPStrokeModel>();

  SPPointModel();

  /// converts to the domain layer
  SPPoint toDomain() {
    return SPPoint(id: id, index: index, offset: Offset(dx, dy), pressure: pressure);
  }

  /// converts from the domain layer
  static SPPointModel fromDomain(SPPoint point) {
    final model = SPPointModel();
    model.index = point.index;
    model.dx = point.offset.dx;
    model.dy = point.offset.dy;
    model.pressure = point.pressure;
    return model;
  }

  /// to json
  Map<String, Object?> toJson() {
    return {
      'id': id,
      'index': index,
      'dx': dx,
      'dy': dy,
      'pressure': pressure,
    };
  }

  /// from json
  static SPPointModel fromJson(Map<String, dynamic> json) {
    final model = SPPointModel();
    model.id = json['id'] as int;
    model.index = json['index'] as int;
    model.dx = json['dx'] as double;
    model.dy = json['dy'] as double;
    model.pressure = json['pressure'] as double;
    return model;
  }
}
