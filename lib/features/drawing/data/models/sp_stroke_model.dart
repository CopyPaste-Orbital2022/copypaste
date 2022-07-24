import 'package:copypaste/features/drawing/data/models/sp_point_model.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/features/file_management/data/models/sp_drawing_model.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
part 'sp_stroke_model.g.dart';

@Collection()
class SPStrokeModel {
  int id = Isar.autoIncrement;
  late double size;
  late int color;
  late bool isComplete;
  late double thinning;
  late double smoothing;
  late double streamline;
  late double taperStart;
  late double taperEnd;
  late bool capStart;
  late bool capEnd;
  late bool simulatePressure;
  bool synced = false;

  final points = IsarLinks<SPPointModel>();

  @Backlink(to: 'strokes')
  final drawing = IsarLink<SPDrawingModel>();

  SPStrokeModel();

  /// Converts to the domain layer. Note that we are lacking the
  SPStroke toDomain() {
    final sortedPoints = points.map((point) => point.toDomain()).toList();
    sortedPoints.sort((a, b) => a.index.compareTo(b.index));
    return SPStroke(
      id: id,
      size: size,
      color: Color(color),
      thinning: thinning,
      smoothing: smoothing,
      streamline: streamline,
      taperStart: taperStart,
      taperEnd: taperEnd,
      capStart: capStart,
      capEnd: capEnd,
      simulatePressure: simulatePressure,
      isComplete: isComplete,
      points: sortedPoints,
    );
  }

  /// Converts from the domain layer
  static SPStrokeModel fromDomain(SPStroke stroke) {
    final model = SPStrokeModel();
    model.size = stroke.size;
    model.color = stroke.color.value;
    model.isComplete = stroke.isComplete;
    model.thinning = stroke.thinning;
    model.smoothing = stroke.smoothing;
    model.streamline = stroke.streamline;
    model.taperStart = stroke.taperStart;
    model.taperEnd = stroke.taperEnd;
    model.capStart = stroke.capStart;
    model.capEnd = stroke.capEnd;
    model.simulatePressure = stroke.simulatePressure;
    model.points.addAll(stroke.points.map((e) => SPPointModel.fromDomain(e)));
    return model;
  }

  /// Converts to Json
  Map<String, Object?> toJson() {
    return {
      'id': id,
      'size': size,
      'color': color,
      'isComplete': isComplete,
      'thinning': thinning,
      'smoothing': smoothing,
      'streamline': streamline,
      'taperStart': taperStart,
      'taperEnd': taperEnd,
      'capStart': capStart,
      'capEnd': capEnd,
      'simulatePressure': simulatePressure,
      'points': points.map((e) => e.toJson()).toList(),
    };
  }

  /// Converts from json
  static SPStrokeModel fromJson(Map<String, dynamic> json) {
    final SPStrokeModel stroke = SPStrokeModel();
    stroke.id = json['id'] as int;
    stroke.size = json['size'] as double;
    stroke.color = json['color'] as int;
    stroke.thinning = json['thinning'] as double;
    stroke.smoothing = json['smoothing'] as double;
    stroke.streamline = json['streamline'] as double;
    stroke.taperStart = json['taperStart'] as double;
    stroke.taperEnd = json['taperEnd'] as double;
    stroke.capStart = json['capStart'] as bool;
    stroke.capEnd = json['capEnd'] as bool;
    stroke.simulatePressure = json['simulatePressure'] as bool;
    stroke.isComplete = json['isComplete'] as bool;
    stroke.points.addAll(
      (json['points'] as List<dynamic>).map((e) => SPPointModel.fromJson(e)),
    );
    stroke.synced = true;
    return stroke;
  }
}
