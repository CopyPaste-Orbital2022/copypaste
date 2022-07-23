import 'dart:convert';
import 'package:copypaste/features/authentication/data/datasources/sp_cloud_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../../domain/entities/display_name.dart';
import '../../domain/entities/email.dart';
import '../../domain/entities/password.dart';
import '../../domain/entities/sp_user.dart';
import '../../domain/repositories/i_auth_repository.dart';

/// Implementation of [IAuthRepository] that uses the SPCloudAuth API.
///
/// This class is a [LazySingleton] so that it can be injected as a dependency.
@LazySingleton(as: IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl(this.auth, this.storage);

  /// The [ISPCloudAuth] API that is used to communicate with the SPCloud API.
  final ISPCloudAuth auth;

  /// The [FlutterSecureStorage] that is used to store the user's credentials.
  final FlutterSecureStorage storage;

  /// The [SPUser] that is currently logged in.
  SPUser? user;

  /// Returns the [SPUser] that is currently logged in.
  @override
  Future<Option<SPUser>> getUser() async {
    if (user != null) {
      return some(user!);
    } else {
      final String? userId = await storage.read(key: 'user_id');
      if (userId == null) {
        return none();
      }
      final String userName = await storage.read(key: 'user_name') ?? 'NO NAME';
      final email = await storage.read(key: 'email') ?? 'no_email@tinyhacks.app';
      user = SPUser(
        uid: userId,
        userName: userName,
        email: email,
      );
      return some(user!);
    }
  }

  /// log out the current user.
  @override
  Future<void> logOut() async {
    if (user != null) {
      await auth.logOut(userId: user!.uid, email: user!.email);
    }
    await storage.delete(key: 'user_id');
    await storage.delete(key: 'user_name');
    await storage.delete(key: 'email');
    user = null;
  }

  /// registers a new user with the given [email], [password] and [displayName].
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
    required DisplayName displayName,
  }) async {
    late final String emailString;
    late final String passwordString;
    late final String displayNameString;
    late Either<AuthFailure, Unit> failureOrUnit;

    email.value.fold((l) {
      failureOrUnit = left(AuthFailure.invalidEmail(message: l.failedReason));
    }, (r) {
      emailString = r;
      failureOrUnit = right(unit);
    });

    if (failureOrUnit.isLeft()) {
      return failureOrUnit;
    }

    password.value.fold((l) {
      failureOrUnit = left(AuthFailure.invalidPassword(message: l.failedReason));
    }, (r) {
      passwordString = r;
      failureOrUnit = right(unit);
    });

    if (failureOrUnit.isLeft()) {
      return failureOrUnit;
    }

    displayName.value.fold((l) {
      failureOrUnit = left(AuthFailure.invalidDisplayName(message: l.failedReason));
    }, (r) {
      displayNameString = r;
      failureOrUnit = right(unit);
    });

    if (failureOrUnit.isLeft()) {
      return failureOrUnit;
    }

    final response = await auth.register(email: emailString, password: passwordString, userName: displayNameString);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      await storage.write(
        key: 'user_id',
        value: jsonResponse['user_id'],
      );
      await storage.write(key: 'user_name', value: displayNameString);
      await storage.write(key: 'email', value: emailString);
      user = SPUser(
        uid: jsonResponse['user_id'],
        userName: displayNameString,
        email: emailString,
      );
      return right(unit);
    } else {
      return left(AuthFailure.serverError());
    }
  }

  /// logs in the user with the given [email] and [password].
  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    late final String emailString;
    late final String passwordString;
    late Either<AuthFailure, Unit> failureOrUnit;

    email.value.fold((l) {
      failureOrUnit = left(AuthFailure.invalidEmail(message: l.failedReason));
    }, (r) {
      emailString = r;
      failureOrUnit = right(unit);
    });

    if (failureOrUnit.isLeft()) {
      return failureOrUnit;
    }

    password.value.fold((l) {
      failureOrUnit = left(AuthFailure.invalidPassword(message: l.failedReason));
    }, (r) {
      passwordString = r;
      failureOrUnit = right(unit);
    });

    if (failureOrUnit.isLeft()) {
      return failureOrUnit;
    }

    // this should not happen, but just in case, we want to return
    // the failure
    if (failureOrUnit.isLeft()) {
      return failureOrUnit;
    }

    final response = await auth.logIn(email: emailString, password: passwordString);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      await storage.write(
        key: 'user_id',
        value: jsonResponse['user_id'],
      );
      await storage.write(key: 'user_name', value: jsonResponse['user_name']);
      await storage.write(key: 'email', value: emailString);
      user = SPUser(
        uid: jsonResponse['user_id'],
        userName: jsonResponse['user_name'],
        email: emailString,
      );
      return right(unit);
    } else {
      return left(AuthFailure.serverError());
    }
  }
}
