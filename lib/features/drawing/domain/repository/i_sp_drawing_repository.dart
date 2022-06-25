import '../../../../core/errors_and_failures/failures/database_failure.dart';
import '../entities/sp_drawing.dart';
import '../entities/sp_stroke.dart';
import 'package:dartz/dartz.dart';

abstract class ISPDrawingRepository {
  /// Asks the repository to create a new drawing in the firebase database
  Future<Either<DatabaseFailure, SPDrawing>> createNewDrawing();

  /// Asks to load the strokes for the drawing
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes(
      SPDrawing drawing);

  /// Sets the strokes
  Future<Either<DatabaseFailure, Unit>> setStrokes({
    required SPDrawing drawing,
    required List<SPStroke> strokes,
  });

  /// Asks to insert the stroke into the drawing
  Future<Either<DatabaseFailure, Unit>> insertStroke({
    required SPDrawing drawing,
    required SPStroke stroke,
  });

  /// Asks to delete the stroke from the drawing
  Future<Either<DatabaseFailure, Unit>> deleteStroke({
    required SPDrawing drawing,
    required SPStroke stroke,
  });
}
