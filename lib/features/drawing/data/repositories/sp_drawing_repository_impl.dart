import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/errors_and_failures/failures/database_failure.dart';
import '../models/sp_drawing_model.dart';
import '../models/sp_stroke_model.dart';
import '../../domain/entities/sp_stroke.dart';
import '../../domain/entities/sp_drawing.dart';
import '../../domain/repository/i_sp_drawing_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISPDrawingRepository)
class SPDrawingRepositoryImpl implements ISPDrawingRepository {
  /// The firestore instance
  final FirebaseFirestore firestore;

  // TODO: change the test-user-id to the real user id

  /// The document reference for the current user
  DocumentReference get user =>
      firestore.collection("users").doc("test-user-id");

  /// The collection reference for the current user's drawings
  CollectionReference get drawings => user.collection("drawings");

  SPDrawingRepositoryImpl(this.firestore);

  @override
  Future<Either<DatabaseFailure, SPDrawing>> createNewDrawing() async {
    final newDrawingReference = drawings.doc();

    print("id: ${newDrawingReference.id}");

    // Creates a new Drawing from the database
    final SPDrawingModel newDrawing =
        SPDrawingModel.newModelFromId(newDrawingReference.id);

    // Updates the drawing to the database
    newDrawingReference.set(newDrawing.toJson());

    // Because the function returns no failures,
    // we just directly return this to the frontend
    return right(newDrawing);
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteStroke({
    required SPDrawing drawing,
    required SPStroke stroke,
  }) async {
    final drawingReference = drawings.doc(drawing.id);

    final strokesReference = drawingReference.collection('strokes');

    bool hasError = false;

    await strokesReference
        .doc(stroke.id)
        .delete()
        .catchError((error, stackTrace) {
      hasError = true;
    });

    if (hasError) {
      // currently I have no idea what error we are facing, so we just return an unknown failure
      return left(const DatabaseFailure("Unknown Failure"));
    } else {
      return right(unit);
    }
  }

  @override
  Future<Either<DatabaseFailure, Unit>> insertStroke({
    required SPDrawing drawing,
    required SPStroke stroke,
  }) async {
    final drawingReference = drawings.doc(drawing.id);
    final strokesReference = drawingReference.collection('strokes');
    // TODO: add error handling code

    await strokesReference.add(stroke.toJson()).catchError((error, stackTrace) {
      print("error: $error");
      print("stackTrace: $stackTrace");
    });
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, List<SPStroke>>> loadStrokes(
      SPDrawing drawing) {
    final drawingReference = drawings.doc(drawing.id);
    final strokesReference = drawingReference.collection('strokes');
    // loads all the strokes as a list of [SPStroke]
    return strokesReference.get().then((snapshot) {
      final List<SPStroke> strokes = snapshot.docs
          .map((doc) => SPStrokeModel.fromJson(doc.data()))
          .toList();
      return right(strokes);
    });
  }

  @override
  Future<Either<DatabaseFailure, Unit>> setStrokes(
      {required SPDrawing drawing, required List<SPStroke> strokes}) async {
    final drawingReference = drawings.doc(drawing.id);
    final strokesReference = drawingReference.collection('strokes');
    // empties the strokes collection
    strokesReference.get().then((snapshot) {
      for (var doc in snapshot.docs) {
        doc.reference.delete();
      }
    });
    // inserts all the strokes into the collection
    for (var stroke in strokes) {
      strokesReference.add(stroke.toJson());
    }
    return right(unit);
  }
}
