import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:isar/isar.dart';
import '../../../drawing/data/models/sp_stroke_model.dart';

part 'sp_drawing_model.g.dart';

@Collection()
class SPDrawingModel {
  SPDrawingModel();

  var id = Isar.autoIncrement;

  late String name;

  late DateTime createdAt;

  late DateTime updatedAt;

  final strokes = IsarLinks<SPStrokeModel>();

  // to json
  Map<String, String> toJson() {
    return {
      'id': id.toString(),
      'name': name,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  // from json
  SPDrawingModel.fromJson(Map<String, String> json) {
    id = int.parse(json['id']!);
    name = json['name']!;
    createdAt = DateTime.parse(json['createdAt']!);
    updatedAt = DateTime.parse(json['updatedAt']!);
  }

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
