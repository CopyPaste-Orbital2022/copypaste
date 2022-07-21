import 'package:copypaste/core/errors_and_failures/errors/json_exception.dart';
import 'package:copypaste/features/file_management/data/models/sp_drawing_model.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/file_management/domain/repositories/i_file_management_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@LazySingleton(as: IFileManagementRepository)
class FileManagementRepositoryLocalImpl implements IFileManagementRepository {
  const FileManagementRepositoryLocalImpl({
    required this.database,
  });

  final Database database;

  @override
  Future<Either<DatabaseFailure, List<SPDrawing>>> loadAllDrawings() async {
    final resultJson = await database.query('drawings', columns: ['id', 'name', 'created_at', 'modified_at']);
    final result = resultJson.map((json) => SPDrawingModel.fromJson(json)).toList();
    return right(result);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> saveDrawing(SPDrawing drawing) async {
    final result = await database.insert(
      'drawings',
      SPDrawingModel.fromDomain(drawing).toJson()..addEntries({'synced': 0}.entries),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    if (result == -1) {
      return left(const DatabaseFailure.insertionFailure());
    }
    return right(unit);
  }
}
