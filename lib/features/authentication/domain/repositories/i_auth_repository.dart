import 'package:dartz/dartz.dart';

import '../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../entities/display_name.dart';
import '../entities/email.dart';
import '../entities/password.dart';
import '../entities/sp_user.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
    required DisplayName displayName,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  });
  Future<void> logOut();
  Future<Option<SPUser>> getUser();
}
