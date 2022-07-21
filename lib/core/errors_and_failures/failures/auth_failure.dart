import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  factory AuthFailure.serverError({
    String? message,
  }) = AuthFailureServerError;
  factory AuthFailure.userNotFound({
    String? message,
  }) = AuthFailureUserNotFound;
  factory AuthFailure.userDisabled({
    String? message,
  }) = AuthFailureUserDisabled;
  factory AuthFailure.wrongPassword({
    String? message,
  }) = AuthFailureWrongPassword;
  factory AuthFailure.emailAlreadyInUse({
    String? message,
  }) = AuthFailureEmailAlreadyInUse;
  factory AuthFailure.invalidDisplayName({
    String? message,
  }) = AuthFailureInvalidDisplayName;
  factory AuthFailure.invalidEmail({
    String? message,
  }) = AuthFailureInvalidEmail;
  factory AuthFailure.invalidPassword({
    String? message,
  }) = AuthFailureInvalidPassword;
}

extension AuthFailureExtension on AuthFailure {
  String description() {
    if (this is AuthFailureServerError) {
      return "Server Error: $message";
    } else if (this is AuthFailureUserNotFound) {
      return "User Not Found: $message";
    } else if (this is AuthFailureUserDisabled) {
      return "User Disabled: $message";
    } else if (this is AuthFailureWrongPassword) {
      return "Wrong Password: $message";
    } else if (this is AuthFailureEmailAlreadyInUse) {
      return "Email Already in Use: $message";
    } else if (this is AuthFailureInvalidDisplayName) {
      return "Invalid User Name: $message";
    } else if (this is AuthFailureInvalidEmail) {
      return "Invalid Email: $message";
    } else if (this is AuthFailureInvalidPassword) {
      return "Invalid Password: $message";
    } else {
      return "Unknown Error";
    }
  }
}
