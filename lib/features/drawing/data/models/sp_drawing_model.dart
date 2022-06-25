import '../../domain/entities/sp_drawing.dart';

class SPDrawingModel extends SPDrawing {
  const SPDrawingModel({
    required super.id,
    required super.createdAt,
    required super.modifiedAt,
    required super.title,
  });

  /// Asks to create a new model from the ID
  factory SPDrawingModel.newModelFromId(String id) {
    return SPDrawingModel(
      id: id,
      createdAt: DateTime.now(),
      modifiedAt: DateTime.now(),
      title: "New Drawing At ${DateTime.now()}",
    );
  }

  /// to json
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt.toIso8601String(),
        'modifiedAt': modifiedAt.toIso8601String(),
        'title': title,
      };

  /// from json
  static SPDrawing fromJson(Map<String, dynamic> json) => SPDrawing(
        id: json['id'] as String,
        createdAt: DateTime.parse(json['createdAt'] as String),
        modifiedAt: DateTime.parse(json['modifiedAt'] as String),
        title: json['title'] as String,
      );
}
