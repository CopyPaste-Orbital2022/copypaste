import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/features/file_management/domain/repositories/i_file_management_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

/// The usecase that creates a drawing in the database
@LazySingleton()
class CreateNewDrawingUsecase {
  final IFileManagementRepository repository;

  const CreateNewDrawingUsecase(this.repository);

  Future<Either<DatabaseFailure, SPDrawing>> call({String? name}) async {
    final drawingOrFailure = await repository.createDrawing(
        name: name ?? 'Untitled Drawing', createdAt: DateTime.now(), updatedAt: DateTime.now());

    return drawingOrFailure.fold(
      (failure) => left(failure),
      (drawing) => right(drawing),
    );
  }
}
