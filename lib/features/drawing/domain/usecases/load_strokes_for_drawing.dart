import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/features/drawing/domain/repository/i_sp_drawing_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class LoadStrokesForDrawingUsecase {
  final ISPDrawingRepository repository;

  LoadStrokesForDrawingUsecase(this.repository);

  Future<Either<DatabaseFailure, List<SPStroke>>> call() async {
    return await repository.loadStrokes();
  }
}
