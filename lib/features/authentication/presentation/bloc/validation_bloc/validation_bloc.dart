import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:copypaste/features/authentication/presentation/bloc/validation_bloc/validation_event.dart';
import 'package:copypaste/features/authentication/presentation/bloc/validation_bloc/validation_state.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../../../domain/entities/display_name.dart';
import '../../../domain/entities/email.dart';
import '../../../domain/entities/password.dart';
import '../../../domain/repositories/i_auth_repository.dart';

@injectable
class ValidationBloc extends Bloc<ValidationEvent, ValidationState> {
  final IAuthRepository _authFacade;

  ValidationBloc(this._authFacade) : super(ValidationState.initial()) {
    on<EmailChanged>((event, emit) async {
      emit(state.copyWith(
        authFailureOrSuccessOption: none(),
        email: Email(event.emailStr),
      ));
    });
    on<PasswordChanged>((event, emit) async {
      emit(state.copyWith(
        authFailureOrSuccessOption: none(),
        password: Password(event.passwordStr),
      ));
    });
    on<DisplayNameChanged>((event, emit) async {
      emit(state.copyWith(
        authFailureOrSuccessOption: none(),
        displayName: DisplayName(event.displayNameStr),
      ));
    });
    on<ToggleSignInAndRegisterPage>((event, emit) async {
      emit(state.copyWith(
        authFailureOrSuccessOption: none(),
        isSignIn: !state.isSignIn,
        showErrorMessages: false,
      ));
    });
    on<ButtonPressed>((event, emit) async {
      final isEmailValid = state.email.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        emit(state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ));
        Either<AuthFailure, Unit> failureOrSuccess;
        if (state.isSignIn) {
          failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
              email: state.email, password: state.password);
        } else {
          if (state.displayName.isValid()) {
            failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
                displayName: state.displayName,
                email: state.email,
                password: state.password);
          } else {
            failureOrSuccess = left(AuthFailure.invalidDisplayName());
          }
        }
        emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        ));
      }
      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
      ));
    });
  }
}
