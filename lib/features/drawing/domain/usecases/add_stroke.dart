import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/features/drawing/domain/repository/i_sp_drawing_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AddStrokeUsecase {
  final ISPDrawingRepository repository;

  const AddStrokeUsecase(this.repository);

  /// if we succeeded in adding the stroke, then we want to return the List<SPStroke> for convenience
  ///
  /// if not, then we return a failure
  Future<Either<DatabaseFailure, SPStroke>> call(SPStroke stroke) async {
    return await repository.addStroke(stroke);
  }
}
