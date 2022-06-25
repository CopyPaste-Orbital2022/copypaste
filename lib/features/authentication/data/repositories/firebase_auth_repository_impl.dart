import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../../domain/entities/display_name.dart';
import '../../domain/entities/email.dart';
import '../../domain/entities/password.dart';
import '../../domain/entities/sp_user.dart';
import '../../domain/repositories/i_auth_repository.dart';
import '../models/sp_user_model.dart';

@LazySingleton(as: IAuthRepository)
class FirebaseAuthRepositoryImpl implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthRepositoryImpl(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
    required DisplayName displayName,
  }) async {
    final String emailStr = email.getValueOrCrash();
    final String passwordStr = password.getValueOrCrash();
    final String displayNameStr = displayName.getValueOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      await _firebaseAuth.currentUser?.updateDisplayName(displayNameStr);

      String uid = _firebaseAuth.currentUser!.uid;

      final DocumentReference<Map<String, dynamic>> docRef =
          FirebaseFirestore.instance.collection("users").doc(uid);

      SPUserModel user =
          SPUserModel(uid: uid, userName: displayNameStr, email: emailStr);

      docRef.set(user.toJson());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          return left(AuthFailure.emailAlreadyInUse());
        default:
          return left(AuthFailure.serverError());
      }
    } on FirebaseException {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    final String emailStr = email.getValueOrCrash();
    final String passwordStr = password.getValueOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "user-not-found":
          return left(AuthFailure.userNotFound());
        case "user-disabled":
          return left(AuthFailure.userDisabled());
        case "wrong-password":
          return left(AuthFailure.wrongPassword());
        default:
          return left(AuthFailure.serverError());
      }
    } on FirebaseException {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<Option<SPUser>> getUser() async {
    if (_firebaseAuth.currentUser == null) {
      return none();
    } else {
      return optionOf(SPUserModel.fromFirebase(_firebaseAuth.currentUser!));
    }
  }
}
