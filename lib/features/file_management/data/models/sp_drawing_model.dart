import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:flutter/foundation.dart';

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
      id: json['ID'] ?? (throw JsonKeyNotFoundException(message: 'id-not-found')),
      createdAt:
          DateTime.tryParse(json['CREATED_AT']) ?? (throw JsonKeyNotFoundException(message: 'created-at-not-found')),
      modifiedAt:
          DateTime.tryParse(json['MODIFIED_AT']) ?? (throw JsonKeyNotFoundException(message: 'modified-at-not-found')),
      name: json['NAME'] ?? (throw JsonKeyNotFoundException(message: 'name-not-found')),
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
      'created_at': createdAt.toIso8601String(),
      'modified_at': modifiedAt.toIso8601String(),
      'name': name,
    };
  }
}
