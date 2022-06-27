import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/features/file_management/domain/repositories/i_file_management_repository.dart';
import 'package:copypaste/features/file_management/domain/usecases/create_drawing.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

/// The usecase that loads the most recent [SPDrawing]
///
/// If we do not have a most recent [SPDrawing], then we just create a new [SPDrawing]
/// by calling the [CreateNewDrawingUsecase] class.
///
/// Note that the most recent drawing must be
@LazySingleton()
class LoadMostRecentDrawingUsecase {
  final IFileManagementRepository repository;
  final CreateNewDrawingUsecase createNewDrawing;

  const LoadMostRecentDrawingUsecase(this.repository, this.createNewDrawing);

  Future<Either<DatabaseFailure, SPDrawing>> call() async {
    final drawingsOrFailure = await repository.loadAllDrawings();

    return await drawingsOrFailure.fold(
      (failure) => left(failure),
      (drawings) async {
        // if the drawings is empty, then we want to create a new empty drawing
        // if the drawing is not empty, then we want to create an old one
        if (drawings.isEmpty) {
          final newDrawingOrFailure = await createNewDrawing();
          return newDrawingOrFailure.fold(
            (failure) => left(failure),
            (drawing) => right(drawing),
          );
        }
        SPDrawing latest = drawings.first;
        for (final drawing in drawings) {
          if (drawing.modifiedAt.isAfter(latest.modifiedAt)) {
            latest = drawing;
          }
        }
        return right(latest);
      },
    );
  }
}
