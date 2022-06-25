import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../../../domain/entities/display_name.dart';
import '../../../domain/entities/email.dart';
import '../../../domain/entities/password.dart';

part 'validation_state.freezed.dart';

@freezed
class ValidationState with _$ValidationState {
  const factory ValidationState({
    required Email email,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required bool isSignIn,
    required DisplayName displayName,
  }) = _ValidationState;

  factory ValidationState.initial() => ValidationState(
        email: Email(""),
        password: Password(""),
        displayName: DisplayName(""),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        isSignIn: true,
      );
}

extension ValidationStateExtension on ValidationState {
  bool hasAuthFailure() {
    return authFailureOrSuccessOption.fold(() => false, (a) => a.isLeft());
  }
}
