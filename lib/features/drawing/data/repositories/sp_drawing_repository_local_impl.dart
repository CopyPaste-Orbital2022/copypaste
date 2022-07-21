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
    // TODO: implement addPointToStroke
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteStroke(SPStroke stroke) async {
    // TODO: implement deleteStroke
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, List<SPPoint>>> loadBorderPointsFromStroke(SPStroke stroke) async {
    // TODO: implement loadBorderPointsFromStroke
    return right(const <SPPoint>[]);
  }

  @override
  Future<Either<DatabaseFailure, List<SPPoint>>> loadPointsFromStroke(SPStroke stroke) async {
    // TODO: implement loadPointsFromStroke
    return right(const <SPPoint>[]);
  }

  @override
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes() async {
    // TODO: implement loadStrokes
    return right(const <SPStroke>[]);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setBorderPointsOfStroke(SPStroke stroke, List<SPPoint> points) async {
    // TODO: implement setBorderPointsOfStroke
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setPointsOfStroke(SPStroke stroke, List<SPPoint> points) async {
    // TODO: implement setPointsOfStroke
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setStroke(SPStroke stroke) async {
    // TODO: implement setStroke
    return right(unit);
  }
}
