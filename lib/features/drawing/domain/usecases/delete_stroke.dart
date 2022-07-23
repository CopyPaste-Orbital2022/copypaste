import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/features/drawing/domain/repository/i_sp_drawing_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DeleteStrokeUsecase {
  final ISPDrawingRepository repository;

  const DeleteStrokeUsecase(this.repository);

  Future<void> call(SPStroke stroke) async {
    await repository.deleteStroke(stroke);
  }
}
