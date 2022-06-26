import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/features/file_management/domain/repositories/i_file_management_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

/// Loads the drawings as a list, sorted by the modified date
@LazySingleton()
class LoadDrawingsListUsecase {
  final IFileManagementRepository repository;

  const LoadDrawingsListUsecase(this.repository);

  int _compareDrawingsByDate(SPDrawing drawing1, SPDrawing drawing2) {
    if (drawing1.modifiedAt == drawing2.modifiedAt) {
      return 0;
    } else if (drawing1.modifiedAt.isBefore(drawing2.modifiedAt)) {
      return 1;
    } else {
      return -1;
    }
  }

  Future<Either<DatabaseFailure, List<SPDrawing>>> call() async {
    final drawingsOrFailure = await repository.loadAllDrawings();
    return drawingsOrFailure.fold(
      (failure) => left(failure),
      (drawings) {
        drawings.sort(_compareDrawingsByDate);
        return right(drawings);
      },
    );
  }
}
