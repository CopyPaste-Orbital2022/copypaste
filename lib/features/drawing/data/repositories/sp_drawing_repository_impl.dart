import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_drawing.dart';
import 'package:copypaste/core/failures/database_failure.dart';
import 'package:copypaste/features/drawing/domain/repository/i_sp_drawing_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISPDrawingRepository)
class SPDrawingRepositoryImpl implements ISPDrawingRepository {
  /// The firestore instance
  final FirebaseFirestore firestore;

  SPDrawingRepositoryImpl(this.firestore);

  @override
  Future<Either<DatabaseFailure, SPDrawing>> createNewDrawing() {
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteStroke(
      {required SPDrawing drawing, required SPStroke stroke}) {
    // TODO: implement deleteStroke
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Unit>> insertStroke(
      {required SPDrawing drawing, required SPStroke stroke}) {
    // TODO: implement insertStroke
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes(
      SPDrawing drawing) {
    // TODO: implement loadStrokes
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setStrokes(
      {required SPDrawing drawing, required List<SPStroke> strokes}) {
    // TODO: implement setStrokes
    throw UnimplementedError();
  }
}
