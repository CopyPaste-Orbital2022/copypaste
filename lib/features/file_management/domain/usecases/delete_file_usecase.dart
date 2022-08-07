import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/features/file_management/domain/repositories/i_file_management_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DeleteFileUsecase {
  const DeleteFileUsecase(this._repository);

  final IFileManagementRepository _repository;

  Future<void> call(SPDrawing drawing) async {
    await _repository.deleteDrawing(drawing);
  }
}
