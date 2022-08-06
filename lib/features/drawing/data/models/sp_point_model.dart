import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:copypaste/features/drawing/data/models/sp_stroke_model.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_point.dart';

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

  /// to json model
  SPPointJsonModel toJsonModel() {
    return SPPointJsonModel(
      id: id,
      index: index,
      dx: dx,
      dy: dy,
      pressure: pressure,
    );
  }

  /// from json model
  static SPPointModel fromJsonModel(SPPointJsonModel json) {
    final model = SPPointModel();
    model.id = json.id;
    model.index = json.index;
    model.dx = json.dx;
    model.dy = json.dy;
    model.pressure = json.pressure;
    return model;
  }
}

@JsonSerializable()
class SPPointJsonModel {
  @JsonKey(name: 'point_id')
  final int id;
  final int index;
  final double dx;
  final double dy;
  final double pressure;
  SPPointJsonModel({
    required this.id,
    required this.index,
    required this.dx,
    required this.dy,
    required this.pressure,
  });

  factory SPPointJsonModel.fromJson(Map<String, dynamic> json) => _$SPPointJsonModelFromJson(json);

  Map<String, dynamic> toJson() => _$SPPointJsonModelToJson(this);

  // to sppont model
  SPPointModel toSPPointModel() {
    return SPPointModel.fromDomain(SPPoint(
      id: id,
      index: index,
      offset: Offset(dx, dy),
      pressure: pressure,
    ));
  }

  // from spoint model
  static SPPointJsonModel fromSPPointModel(SPPointModel point) {
    return SPPointJsonModel(
      id: point.id,
      index: point.index,
      dx: point.dx,
      dy: point.dy,
      pressure: point.pressure,
    );
  }
}
