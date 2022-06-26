import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copypaste/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import '../../../../core/errors_and_failures/failures/database_failure.dart';
import '../models/sp_stroke_model.dart';
import '../../domain/entities/sp_stroke.dart';
import '../../domain/repository/i_sp_drawing_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISPDrawingRepository)
class SPDrawingRepositoryImpl implements ISPDrawingRepository {
  @override
  Future<Either<DatabaseFailure, Unit>> deleteStroke(
      {required SPStroke stroke}) {
    // TODO: implement deleteStroke
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Unit>> insertStroke(
      {required SPStroke stroke}) {
    // TODO: implement insertStroke
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes() {
    // TODO: implement loadStrokes
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setStrokes(
      {required List<SPStroke> strokes}) {
    // TODO: implement setStrokes
    throw UnimplementedError();
  }
}
