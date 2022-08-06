import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:copypaste/features/drawing/data/models/sp_point_model.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/features/file_management/data/models/sp_drawing_model.dart';

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

  /// to json model
  SPStrokeJsonModel toJson() {
    return SPStrokeJsonModel(
      id: id,
      size: size,
      color: color,
      isComplete: isComplete,
      thinning: thinning,
      smoothing: smoothing,
      streamline: streamline,
      taperStart: taperStart,
      taperEnd: taperEnd,
      capStart: capStart,
      capEnd: capEnd,
      simulatePressure: simulatePressure,
      points: points.map((e) => e.toJsonModel()).toList(),
    );
  }

  /// from json model
  static SPStrokeModel fromJson(SPStrokeJsonModel json) {
    final model = SPStrokeModel();
    model.id = json.id;
    model.size = json.size;
    model.color = json.color;
    model.isComplete = json.isComplete;
    model.thinning = json.thinning;
    model.smoothing = json.smoothing;
    model.streamline = json.streamline;
    model.taperStart = json.taperStart;
    model.taperEnd = json.taperEnd;
    model.capStart = json.capStart;
    model.capEnd = json.capEnd;
    model.simulatePressure = json.simulatePressure;
    model.points.addAll(json.points.map((e) => SPPointModel.fromJsonModel(e)));
    return model;
  }
}

@Collection()
class DeletedStroke {
  int id = Isar.autoIncrement;
  int strokeId;
  int drawingId;
  DeletedStroke(this.strokeId, this.drawingId);
}

@JsonSerializable()
class SPStrokeJsonModel {
  @JsonKey(name: 'stroke_id')
  int id = Isar.autoIncrement;
  double size;
  int color;
  @JsonKey(name: 'is_complete')
  bool isComplete;
  double thinning;
  double smoothing;
  double streamline;
  @JsonKey(name: 'taper_start')
  double taperStart;
  @JsonKey(name: 'taper_end')
  double taperEnd;
  @JsonKey(name: 'cap_start')
  bool capStart;
  @JsonKey(name: 'cap_end')
  bool capEnd;
  @JsonKey(name: 'simulate_pressure')
  bool simulatePressure;
  List<SPPointJsonModel> points;
  SPStrokeJsonModel({
    required this.id,
    required this.size,
    required this.color,
    required this.isComplete,
    required this.thinning,
    required this.smoothing,
    required this.streamline,
    required this.taperStart,
    required this.taperEnd,
    required this.capStart,
    required this.capEnd,
    required this.simulatePressure,
    required this.points,
  });

  factory SPStrokeJsonModel.fromJson(Map<String, dynamic> json) => _$SPStrokeJsonModelFromJson(json);

  Map<String, dynamic> toJson() => _$SPStrokeJsonModelToJson(this);

  SPStrokeModel toSPStrokeModel() {
    final model = SPStrokeModel();
    model.id = id;
    model.size = size;
    model.color = color;
    model.isComplete = isComplete;
    model.thinning = thinning;
    model.smoothing = smoothing;
    model.streamline = streamline;
    model.taperStart = taperStart;
    model.taperEnd = taperEnd;
    model.capStart = capStart;
    model.capEnd = capEnd;
    model.simulatePressure = simulatePressure;
    model.points.addAll(points.map((e) => e.toSPPointModel()));
    model.isComplete = true;
    return model;
  }

  factory SPStrokeJsonModel.fromSPStrokeModel(SPStrokeModel model) {
    return SPStrokeJsonModel(
      id: model.id,
      size: model.size,
      color: model.color,
      isComplete: model.isComplete,
      thinning: model.thinning,
      smoothing: model.smoothing,
      streamline: model.streamline,
      taperStart: model.taperStart,
      taperEnd: model.taperEnd,
      capStart: model.capStart,
      capEnd: model.capEnd,
      simulatePressure: model.simulatePressure,
      points: model.points.map((e) => SPPointJsonModel.fromSPPointModel(e)).toList(),
    );
  }
}
