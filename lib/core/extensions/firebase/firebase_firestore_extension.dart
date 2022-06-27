import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copypaste/features/authentication/domain/entities/sp_user.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  /// the users collection
  CollectionReference get usersCollection => collection('users');

  /// the user document
  DocumentReference getUserReference(SPUser user) {
    return usersCollection.doc(user.uid);
  }

  /// drawings collection reference
  CollectionReference getDrawingsListCollection(SPUser user) {
    return getUserReference(user).collection("drawings");
  }

  /// the drawing reference
  DocumentReference getDrawingReference(SPUser user, SPDrawing drawing) {
    return getDrawingsListCollection(user).doc(drawing.id);
  }

  /// the strokes collection reference
  CollectionReference getStrokesListReference(SPUser user, SPDrawing drawing) {
    return getDrawingReference(user, drawing).collection(
      'strokes',
    );
  }

  /// the stroke reference
  DocumentReference getStrokeReference(
      SPUser user, SPDrawing drawing, SPStroke stroke) {
    return getStrokesListReference(user, drawing).doc(stroke.id.toString());
  }

  /// the points reference
  CollectionReference getPointsReference(
      SPUser user, SPDrawing drawing, SPStroke stroke) {
    return getStrokeReference(user, drawing, stroke).collection('points');
  }
}
