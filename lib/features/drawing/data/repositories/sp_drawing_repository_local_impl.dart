import 'package:copypaste/features/drawing/data/models/sp_stroke_model.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/drawing/domain/repository/i_sp_drawing_repository.dart';
import 'package:copypaste/features/file_management/data/models/sp_drawing_model.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@LazySingleton(as: ISPDrawingRepository)
class SPDrawingRepositoryLocalImpl implements ISPDrawingRepository {
  SPDrawingRepositoryLocalImpl(this.isar);

  final Isar isar;

  SPDrawingModel? drawing;

  @override
  Future<Either<DatabaseFailure, Unit>> openDrawing(SPDrawing drawing) async {
    try {
      this.drawing = SPDrawingModel.fromSPDrawing(drawing);
      await this.drawing!.strokes.load();
      return right(unit);
    } on Exception {
      return left(DatabaseFailure.isarError(description: drawing.name));
    }
  }

  @override
  Stream<List<SPStroke>>? get strokesStream {
    if (drawing == null) {
      return null;
    }
    return isar.sPDrawingModels.watchObject(drawing!.id).map(
      (event) {
        if (event == null) {
          return [];
        }
        event.strokes.loadSync();
        return event.strokes.map((e) => e.toDomain()).toList();
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setStroke(SPStroke stroke) async {
    try {
      assert(drawing != null);
      assert(stroke.id != null);
      final strokeModel = SPStrokeModel.fromDomain(stroke);
      strokeModel.drawing.value = drawing;
      isar.writeTxn((isar) async {
        await isar.sPStrokeModels.put(strokeModel);
        await strokeModel.points.save();
        await strokeModel.drawing.save();
      });
      return right(unit);
    } on IsarError catch (e) {
      debugPrint(e.toString());
      return left(DatabaseFailure.isarError(description: e.toString()));
    } on AssertionError catch (e) {
      debugPrintStack(stackTrace: e.stackTrace);
      return left(DatabaseFailure.hasNoDrawing(description: e.toString()));
    }
  }

  @override
  Future<Either<DatabaseFailure, SPStroke>> addStroke(SPStroke stroke) async {
    try {
      assert(drawing != null);
      final strokeModel = SPStrokeModel.fromDomain(stroke);
      strokeModel.drawing.value = drawing;
      final strokeId = await isar.writeTxn((isar) async {
        final sid = await isar.sPStrokeModels.put(strokeModel);
        await strokeModel.points.save();
        await strokeModel.drawing.save();
        return sid;
      });
      strokeModel.id = strokeId;
      return right(strokeModel.toDomain());
    } on IsarError catch (e) {
      debugPrint(e.toString());
      return left(
        DatabaseFailure.isarError(description: e.toString()),
      );
    }
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteStroke(SPStroke stroke) async {
    try {
      final strokeModel = SPStrokeModel.fromDomain(stroke);
      await isar.writeTxn((isar) async {
        await isar.sPStrokeModels.delete(strokeModel.id);
      });
      return right(unit);
    } on IsarError catch (e) {
      debugPrint(e.toString());
      return left(DatabaseFailure.isarError(description: e.toString()));
    }
  }
}
