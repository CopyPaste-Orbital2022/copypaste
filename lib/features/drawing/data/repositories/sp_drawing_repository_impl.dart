import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copypaste/core/extensions/firebase/firebase_firestore_extension.dart';
import 'package:copypaste/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:copypaste/features/drawing/data/models/sp_point_model.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_point.dart';
import 'package:copypaste/features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import '../../domain/repository/i_sp_drawing_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/sp_stroke_model.dart';

@LazySingleton(as: ISPDrawingRepository)
class SPDrawingRepositoryImpl implements ISPDrawingRepository {
  final FirebaseFirestore firestore;
  final AuthBloc authBloc;
  final FileManagementBloc fileManagementBloc;

  SPDrawingRepositoryImpl(
    this.firestore,
    this.authBloc,
    this.fileManagementBloc,
  );

  Future<Either<DatabaseFailure, CollectionReference>>
      getStrokesListRef() async {
    final user = await authBloc.getUserOption();
    return user.fold(
      () => left(const DatabaseFailure.userHasNotSignedIn()),
      (user) {
        if (fileManagementBloc.state.selectedDrawing != null) {
          return right(
            firestore.getStrokesListReference(
                user, fileManagementBloc.state.selectedDrawing!),
          );
        } else {
          return left(
            const DatabaseFailure.hasNoDrawing(),
          );
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteStroke(SPStroke stroke) async {
    final failureOrUnit = await getStrokesListRef();
    return await failureOrUnit.fold(
      (failure) => left(failure),
      (strokesRef) async {
        try {
          final QuerySnapshot snapshot = await strokesRef.get();
          snapshot.docs.map(
            (strokeRef) {
              final Map<String, dynamic> strokeData =
                  strokeRef.data() as Map<String, dynamic>;
              if (strokeData['id'] == stroke.id) {
                strokeRef.reference.delete();
              }
            },
          );
          return right(unit);
        } on FirebaseException catch (e) {
          return left(DatabaseFailure(e.code));
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes() async {
    // TODO; implement loadStrokes
    final failureOrRef = await getStrokesListRef();
    return failureOrRef.fold(
      (failure) => left(failure),
      (strokesRef) async {
        try {
          final QuerySnapshot snapshot = await strokesRef.get();
          final List<SPStroke> strokes = snapshot.docs
              .map((doc) => SPStrokeModel.fromJson(
                    doc.data() as Map<String, dynamic>,
                  ).toDomain())
              .toList();
          for (int i = 0; i < strokes.length; i++) {
            final List<SPPoint> points =
                await loadPointsFromStroke(strokes[i]).then(
              (value) => value.fold(
                (failure) => [],
                (points) => points,
              ),
            );
            final List<SPPoint> borderPoints =
                await loadBorderPointsFromStroke(strokes[i]).then(
              (value) => value.fold(
                (failure) => [],
                (points) => points,
              ),
            );
            strokes[i] = strokes[i].copyWith(
              points: points,
              cachedBorderPoints: borderPoints,
            );
          }
          // sort the strokes in ascending order by their id
          strokes.sort((a, b) => a.id.compareTo(b.id));
          return right(strokes);
        } on FirebaseException catch (e) {
          return left(DatabaseFailure(e.code));
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setStroke(
    SPStroke stroke,
  ) async {
    final failureOrRef = await getStrokesListRef();
    return await failureOrRef.fold(
      (failure) => left(failure),
      (strokesRef) async {
        try {
          final DocumentReference ref = strokesRef.doc(stroke.id.toString());
          await ref.update(SPStrokeModel.fromDomain(stroke).toJson());
          // set points
          final failureOrUnit = await setPointsOfStroke(stroke, stroke.points);
          return await failureOrUnit.fold(
            (failure) async => left(failure),
            (unit) async {
              // set border points
              final failureOrUnit = await setBorderPointsOfStroke(
                stroke,
                stroke.cachedBorderPoints,
              );
              return failureOrUnit;
            },
          );
        } on FirebaseException catch (e) {
          if (e.code == 'not-found') {
            await strokesRef
                .doc(stroke.id.toString())
                .set(SPStrokeModel.fromDomain(stroke).toJson());
            // set points
            final failureOrUnit =
                await setPointsOfStroke(stroke, stroke.points);
            return await failureOrUnit.fold(
              (failure) async => left(failure),
              (unit) async {
                // set border points
                final failureOrUnit = await setBorderPointsOfStroke(
                  stroke,
                  stroke.cachedBorderPoints,
                );
                return failureOrUnit;
              },
            );
          }

          return left(DatabaseFailure(e.code));
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, Unit>> addPointToStroke(
    SPStroke stroke,
    SPPoint point,
  ) async {
    final failureOrRef = await getStrokesListRef();
    return await failureOrRef.fold(
      (failure) => left(failure),
      (strokesRef) async {
        try {
          final DocumentReference docRef = strokesRef.doc(stroke.id.toString());
          final CollectionReference pointsRef = docRef.collection('points');
          final DocumentReference pointRef = pointsRef.doc(point.id.toString());
          await pointRef.set(SPPointModel.fromDomain(point));
          return right(unit);
        } on FirebaseException catch (e) {
          return left(DatabaseFailure(e.code));
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, List<SPPoint>>> loadPointsFromStroke(
    SPStroke stroke,
  ) async {
    return loadPoints(stroke, 'points');
  }

  @override
  Future<Either<DatabaseFailure, List<SPPoint>>> loadBorderPointsFromStroke(
    SPStroke stroke,
  ) async {
    return loadPoints(stroke, 'borderPoints');
  }

  Future<Either<DatabaseFailure, List<SPPoint>>> loadPoints(
      SPStroke stroke, String collectionName) async {
    final failureOrRef = await getStrokesListRef();
    return await failureOrRef.fold(
      (failure) => left(failure),
      (strokesRef) async {
        try {
          final strokeRef = strokesRef.doc(stroke.id.toString());
          final pointsRef = strokeRef.collection(collectionName);
          final snapshot = await pointsRef.get();
          final points = snapshot.docs
              .map(
                (pointRef) => SPPointModel.fromJson(pointRef.data()).toDomain(),
              )
              .toList();
          // sort the points by their id in ascending order
          points.sort((a, b) => a.id.compareTo(b.id));
          return right(points);
        } on FirebaseException catch (e) {
          return left(DatabaseFailure(e.code));
        } on TypeError catch (e) {
          return left(DatabaseFailure(e.toString()));
        }
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setPointsOfStroke(
    SPStroke stroke,
    List<SPPoint> points,
  ) async {
    return setPoints(stroke, points, 'points');
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setBorderPointsOfStroke(
    SPStroke stroke,
    List<SPPoint>? points,
  ) async {
    if (points == null) {
      return right(unit);
    }
    return setPoints(stroke, points, 'borderPoints');
  }

  Future<Either<DatabaseFailure, Unit>> setPoints(
      SPStroke stroke, List<SPPoint> points, String collectionName) async {
    final failureOrRef = await getStrokesListRef();
    return await failureOrRef.fold(
      (failure) => left(failure),
      (strokesRef) async {
        try {
          final strokeRef = strokesRef.doc(stroke.id.toString());
          final pointsRef = strokeRef.collection(collectionName);
          final snapshot = await pointsRef.get();
          for (final pointRef in snapshot.docs) {
            pointRef.reference.delete();
          }
          for (int i = 0; i < points.length; i++) {
            pointsRef.doc(points[i].id.toString()).set(
                  SPPointModel.fromDomain(points[i]).toJson(),
                );
          }
          return right(unit);
        } on FirebaseException catch (e) {
          return left(DatabaseFailure(e.code));
        } on TypeError catch (e) {
          return left(DatabaseFailure(e.toString()));
        }
      },
    );
  }
}
