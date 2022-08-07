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

import '../../../drawing/data/models/sp_point_model.dart';
import '../../../drawing/data/models/sp_stroke_model.dart';

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
    drawingModel.syncedState = 2;
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

  @override
  Future<Either<DatabaseFailure, Unit>> deleteDrawing(SPDrawing drawing) async {
    final drawingModel = await isar.sPDrawingModels.get(drawing.id);

    if (drawingModel == null) {
      return right(unit);
    }

    await drawingModel.strokes.load();

    await isar.writeTxn(
      (isar) async {
        for (final stroke in drawingModel.strokes) {
          final strokeModel = await isar.sPStrokeModels.get(stroke.id);
          if (strokeModel == null) {
            continue;
          }
          await strokeModel.points.load();
          for (final point in strokeModel.points) {
            await isar.sPPointModels.delete(point.id);
          }
          await isar.sPPointModels.delete(strokeModel.id);
        }
        await isar.sPDrawingModels.delete(drawing.id);
      },
    );
    return right(unit);
  }
}
