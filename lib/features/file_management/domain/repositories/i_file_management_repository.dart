import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:dartz/dartz.dart';

abstract class IFileManagementRepository {
  /// Asks the databse to create a drawing if the drawing does not exist
  ///
  /// Else, asks the database to update the existing drawing
  Future<Either<DatabaseFailure, Unit>> saveDrawing(SPDrawing drawing);

  /// Asks the database to load all the drawings
  Future<Either<DatabaseFailure, List<SPDrawing>>> loadAllDrawings();
}
