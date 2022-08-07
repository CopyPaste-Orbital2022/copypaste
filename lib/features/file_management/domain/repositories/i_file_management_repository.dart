import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:dartz/dartz.dart';

abstract class IFileManagementRepository {
  /// returns the list of all the drawings in the database
  Stream<List<SPDrawing>> get drawingsStream;

  /// creates the drawing in the database
  Future<Either<DatabaseFailure, SPDrawing>> createDrawing({
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
  });

  /// Else, asks the database to update the existing drawing
  Future<Either<DatabaseFailure, Unit>> updateDrawing(SPDrawing drawing);

  /// Delete the drawing
  Future<Either<DatabaseFailure, Unit>> deleteDrawing(SPDrawing drawing);
}
