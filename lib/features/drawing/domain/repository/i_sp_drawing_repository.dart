import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';

import '../../../../core/errors_and_failures/failures/database_failure.dart';
import '../entities/sp_stroke.dart';
import 'package:dartz/dartz.dart';

abstract class ISPDrawingRepository {
  Stream<List<SPStroke>>? get strokesStream;

  Future<Either<DatabaseFailure, Unit>> openDrawing(SPDrawing drawing);

  /// Asks to add a stroke to the drawing
  Future<Either<DatabaseFailure, SPStroke>> addStroke(SPStroke stroke);

  /// Asks to set the stroke
  Future<Either<DatabaseFailure, Unit>> setStroke(
    SPStroke stroke,
  );

  /// Asks to delete the stroke from the drawing
  Future<Either<DatabaseFailure, Unit>> deleteStroke(
    SPStroke stroke,
  );
}
