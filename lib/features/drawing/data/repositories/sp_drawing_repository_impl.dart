import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copypaste/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:copypaste/features/drawing/data/models/sp_stroke_model.dart';
import 'package:copypaste/features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart';
import '../../../../core/errors_and_failures/failures/database_failure.dart';
import '../../domain/entities/sp_stroke.dart';
import '../../domain/repository/i_sp_drawing_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:copypaste/core/extensions/firebase/firebase_firestore_extension.dart';

@LazySingleton(as: ISPDrawingRepository)
class SPDrawingRepositoryImpl implements ISPDrawingRepository {
  final AuthBloc authBloc;
  final FileManagementBloc fileManagementBloc;
  final FirebaseFirestore firestore;

  SPDrawingRepositoryImpl(
    this.authBloc,
    this.fileManagementBloc,
    this.firestore,
  );

  Future<Either<DatabaseFailure, DocumentReference>>
      _getDrawingReference() async {
    final userOption = await authBloc.getUserOption();
    return userOption.fold(
      () => left(const DatabaseFailure.userHasNotSignedIn()),
      (user) {
        if (fileManagementBloc.state.selectedDrawing == null) {
          return left(const DatabaseFailure.hasNoDrawing());
        } else {
          return right(
            firestore.getDrawingReference(
                user, fileManagementBloc.state.selectedDrawing!),
          );
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteStroke({
    required SPStroke stroke,
  }) async {
    final drawingReferenceOrFailure = await _getDrawingReference();
    return await drawingReferenceOrFailure.fold(
      (failure) async => left(failure),
      (reference) async {
        try {
          await reference.collection('strokes').doc(stroke.id).delete();
          return right(unit);
        } on FirebaseException catch (e) {
          return left(DatabaseFailure(e.code));
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, Unit>> insertStroke({
    required SPStroke stroke,
  }) async {
    final drawingReferenceOrFailure = await _getDrawingReference();
    return await drawingReferenceOrFailure.fold(
      (failure) async => left(failure),
      (reference) async {
        try {
          await reference
              .collection('strokes')
              .doc(stroke.id)
              .set(SPStrokeModel(stroke).toJson());
          return right(unit);
        } on FirebaseException catch (e) {
          return left(DatabaseFailure(e.code));
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes() async {
    final drawingReferenceOrFailure = await _getDrawingReference();
    return await drawingReferenceOrFailure.fold(
      (failure) async => left(failure),
      (reference) async {
        try {
          final collection = reference.collection('strokes');
          final QuerySnapshot snapshot = await collection.get();
          return right(
            snapshot.docs
                .map(
                  (entry) => SPStrokeModel.fromJson(
                      entry.data() as Map<String, Object?>),
                )
                .toList(),
          );
        } on FirebaseException catch (e) {
          return left(DatabaseFailure(e.code));
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setStrokes(
      {required List<SPStroke> strokes}) async {
    final drawingReferenceOrFailure = await _getDrawingReference();
    return await drawingReferenceOrFailure.fold(
      (failure) async => left(failure),
      (reference) async {
        try {
          final collection = reference.collection('strokes');
          final QuerySnapshot snapshot = await collection.get();
          for (final e in snapshot.docs) {
            e.reference.delete();
          }
          for (final stroke in strokes) {
            collection.doc(stroke.id).set(stroke.toJson());
          }
          return right(unit);
        } on FirebaseException catch (e) {
          return left(DatabaseFailure(e.code));
        }
      },
    );
  }
}
