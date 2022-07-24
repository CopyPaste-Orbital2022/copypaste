import 'dart:async';
import 'dart:convert';

import 'package:copypaste/core/errors_and_failures/errors/json_exception.dart';
import 'package:copypaste/features/file_management/data/models/sp_drawing_model.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/file_management/domain/repositories/i_file_management_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@LazySingleton(as: IFileManagementRepository)
class FileManagementRepositoryLocalImpl implements IFileManagementRepository {
  FileManagementRepositoryLocalImpl(this.isar);

  final Isar isar;

  @override
  Stream<List<SPDrawing>> get drawingsStream =>
      isar.sPDrawingModels.where().sortByUpdatedAt().watch(initialReturn: true).map(
            (event) => event.map((e) => e.toSPDrawing()).toList().reversed.toList(),
          );

  @override
  Future<Either<DatabaseFailure, Unit>> updateDrawing(SPDrawing drawing) async {
    final SPDrawingModel drawingModel = SPDrawingModel.fromSPDrawing(drawing);
    drawingModel.updatedAt = DateTime.now();
    await isar.writeTxn((isar) async {
      await isar.sPDrawingModels.put(drawingModel);
    });
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, SPDrawing>> createDrawing({
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) async {
    final drawingModel = SPDrawingModel();
    drawingModel.name = name;
    drawingModel.createdAt = createdAt;
    drawingModel.updatedAt = updatedAt;
    await isar.writeTxn((isar) async {
      final int id = await isar.sPDrawingModels.put(drawingModel);
      drawingModel.id = id;
    });
    return right(drawingModel.toSPDrawing());
  }
}
