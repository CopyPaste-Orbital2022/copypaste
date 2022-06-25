import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:copypaste/features/authentication/presentation/bloc/auth_bloc/auth_state.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entities/sp_user.dart';
import '../../../domain/repositories/i_auth_repository.dart';
import 'auth_event.dart';

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
}
