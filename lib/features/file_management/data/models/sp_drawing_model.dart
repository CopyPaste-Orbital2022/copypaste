import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';

class SPDrawingModel extends SPDrawing {
  const SPDrawingModel({
    required super.id,
    required super.createdAt,
    required super.modifiedAt,
    required super.name,
  });

  factory SPDrawingModel.fromJson(Map<String, dynamic> json) {
    return SPDrawingModel(
      id: json['id'],
      createdAt: json['createdAt'].toDate(),
      modifiedAt: json['modifiedAt'].toDate(),
      name: json['name'],
    );
  }

  factory SPDrawingModel.fromDomain(SPDrawing domain) {
    return SPDrawingModel(
      id: domain.id,
      createdAt: domain.createdAt,
      modifiedAt: domain.modifiedAt,
      name: domain.name,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'createdAt': createdAt,
      'modifiedAt': modifiedAt,
      'name': name,
    };
  }
}
