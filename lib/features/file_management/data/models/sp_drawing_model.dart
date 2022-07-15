import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';

import '../../../../core/errors_and_failures/errors/json_exception.dart';

class SPDrawingModel extends SPDrawing {
  const SPDrawingModel({
    required super.id,
    required super.name,
    required super.createdAt,
    required super.modifiedAt,
  });

  factory SPDrawingModel.fromJson(Map<String, dynamic> json) {
    return SPDrawingModel(
      id: json['id'] ?? (throw JsonKeyNotFoundException(message: 'id-not-found')),
      createdAt: json['createdAt'].toDate() ?? (throw JsonKeyNotFoundException(message: 'createdAt-not-found')),
      modifiedAt: json['modifiedAt'].toDate() ?? (throw JsonKeyNotFoundException(message: 'modifiedAt-not-found')),
      name: json['name'] ?? (throw JsonKeyNotFoundException(message: 'name-not-found')),
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
