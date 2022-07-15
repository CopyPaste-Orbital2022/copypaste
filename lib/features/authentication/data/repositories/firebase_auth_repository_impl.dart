import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../../domain/entities/display_name.dart';
import '../../domain/entities/email.dart';
import '../../domain/entities/password.dart';
import '../../domain/entities/sp_user.dart';
import '../../domain/repositories/i_auth_repository.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  @override
  Future<Option<SPUser>> getUser() async {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() async {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
    required DisplayName displayName,
  }) async {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }
}
