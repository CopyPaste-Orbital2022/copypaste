import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/features/file_management/domain/repositories/i_file_management_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

/// The usecase for changing the name of the drawing
@LazySingleton()
class ChangeDrawingNameUsecase {
  final IFileManagementRepository repository;

  const ChangeDrawingNameUsecase(this.repository);

  Future<Either<DatabaseFailure, Unit>> call(SPDrawing drawing, String name) async {
    final failureOrUnit = await repository.updateDrawing(drawing.copyWith(name: name));
    return failureOrUnit;
  }
}
