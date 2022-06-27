import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/features/drawing/domain/repository/i_sp_drawing_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'dart:developer' as developer;

@LazySingleton()
class DeleteStrokeUsecase {
  final ISPDrawingRepository repository;

  const DeleteStrokeUsecase(this.repository);

  Future<void> call(SPStroke stroke) async {
    final unitOrFailure = await repository.deleteStroke(stroke);
    unitOrFailure.fold(
      (failure) => developer
          .log('Failed to delete stroke with ID ${stroke.id}: $failure'),
      (r) => null,
    );
  }
}
