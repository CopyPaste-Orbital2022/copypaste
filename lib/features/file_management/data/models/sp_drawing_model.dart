import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import '../../../drawing/data/models/sp_stroke_model.dart';

part 'sp_drawing_model.g.dart';

@Collection()
@JsonSerializable()
class SPDrawingModel {
  SPDrawingModel();

  var id = Isar.autoIncrement;

  late String name;

  @JsonKey(name: 'created_at')
  late DateTime createdAt;

  @JsonKey(name: 'updated_at')
  late DateTime updatedAt;

  final strokes = IsarLinks<SPStrokeModel>();

  late int syncedState = 1;

  // from json
  factory SPDrawingModel.fromJson(Map<String, dynamic> json) => _$SPDrawingModelFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$SPDrawingModelToJson(this);

  // from domain entity
  SPDrawingModel.fromSPDrawing(SPDrawing drawing) {
    id = drawing.id;
    name = drawing.name;
    createdAt = drawing.createdAt;
    updatedAt = drawing.updatedAt;
  }

  // to domain entity
  SPDrawing toSPDrawing() {
    return SPDrawing(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
