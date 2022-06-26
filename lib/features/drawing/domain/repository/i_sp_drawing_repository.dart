import '../../../../core/errors_and_failures/failures/database_failure.dart';
import '../entities/sp_stroke.dart';
import 'package:dartz/dartz.dart';

abstract class ISPDrawingRepository {
  /// Asks to load the strokes for the drawing
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes();

  /// Sets the strokes
  Future<Either<DatabaseFailure, Unit>> setStrokes({
    required List<SPStroke> strokes,
  });

  /// Asks to insert the stroke into the drawing
  Future<Either<DatabaseFailure, Unit>> insertStroke({
    required SPStroke stroke,
  });

  /// Asks to delete the stroke from the drawing
  Future<Either<DatabaseFailure, Unit>> deleteStroke({
    required SPStroke stroke,
  });
}
