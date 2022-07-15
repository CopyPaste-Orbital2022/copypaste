import 'package:copypaste/features/drawing/data/models/sp_point_model.dart';
import 'package:copypaste/features/drawing/data/models/sp_stroke_model.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_point.dart';
import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/drawing/domain/repository/i_sp_drawing_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@LazySingleton(as: ISPDrawingRepository)
class SPDrawingRepositoryLocalImpl implements ISPDrawingRepository {
  const SPDrawingRepositoryLocalImpl({
    required this.database,
  });

  final Database database;

  @override
  Future<Either<DatabaseFailure, Unit>> addPointToStroke(SPStroke stroke, SPPoint point) async {
    database.insert(
      'points',
      SPPointModel.fromDomain(point).toJson(),
    );
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteStroke(SPStroke stroke) {
    // TODO: implement deleteStroke
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, List<SPPoint>>> loadBorderPointsFromStroke(SPStroke stroke) {
    // TODO: implement loadBorderPointsFromStroke
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, List<SPPoint>>> loadPointsFromStroke(SPStroke stroke) {
    // TODO: implement loadPointsFromStroke
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes() {
    // TODO: implement loadStrokes
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setBorderPointsOfStroke(SPStroke stroke, List<SPPoint> points) {
    // TODO: implement setBorderPointsOfStroke
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setPointsOfStroke(SPStroke stroke, List<SPPoint> points) {
    // TODO: implement setPointsOfStroke
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setStroke(SPStroke stroke) {
    // TODO: implement setStroke
    throw UnimplementedError();
  }
}
