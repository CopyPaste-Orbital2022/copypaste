import 'package:perfect_freehand/perfect_freehand.dart';

import '../../../../core/errors_and_failures/failures/database_failure.dart';
import '../entities/sp_point.dart';
import '../entities/sp_stroke.dart';
import 'package:dartz/dartz.dart';

abstract class ISPDrawingRepository {
  /// Asks to load the strokes for the drawing
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes();

  /// Asks to set the stroke
  Future<Either<DatabaseFailure, Unit>> setStroke(
    SPStroke stroke,
  );

  /// Asks to delete the stroke from the drawing
  Future<Either<DatabaseFailure, Unit>> deleteStroke(
    SPStroke stroke,
  );

  /// Asks to add a point to a stroke
  Future<Either<DatabaseFailure, Unit>> addPointToStroke(
    SPStroke stroke,
    SPPoint point,
  );

  /// Asks to set all the points of a stroke
  Future<Either<DatabaseFailure, Unit>> setPointsOfStroke(
    SPStroke stroke,
    List<SPPoint> points,
  );

  /// Asks to load all the points from a stroke
  Future<Either<DatabaseFailure, List<SPPoint>>> loadPointsFromStroke(
    SPStroke stroke,
  );

  /// Asks to load all the border points from a stroke
  Future<Either<DatabaseFailure, List<SPPoint>>> loadBorderPointsFromStroke(
    SPStroke stroke,
  );

  /// Asks to set the border points of a stroke
  Future<Either<DatabaseFailure, Unit>> setBorderPointsOfStroke(
    SPStroke stroke,
    List<SPPoint> points,
  );
}
