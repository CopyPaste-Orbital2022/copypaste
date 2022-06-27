import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entities/sp_user.dart';
import '../../../domain/repositories/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  IAuthRepository repository;
  AuthBloc(this.repository) : super(const AuthState.initial()) {
    on<UpdateUserState>((event, emit) async {
      Option<SPUser> user = await repository.getUser();
      user.fold(
        () {
          emit(const AuthState.userNotSignedIn());
        },
        (a) {
          emit(AuthState.userSignedIn(a));
        },
      );
    });
    on<LogOut>((event, emit) async {
      await repository.logOut();
    });
  }

  /// Returns the user
  Future<Option<SPUser>> getUserOption() async {
    return await repository.getUser();
  }
}
