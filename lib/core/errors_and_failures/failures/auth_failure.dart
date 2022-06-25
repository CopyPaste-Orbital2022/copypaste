import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  factory AuthFailure.serverError() = ServerError;
  factory AuthFailure.userNotFound() = UserNotFound;
  factory AuthFailure.userDisabled() = UserDisabled;
  factory AuthFailure.wrongPassword() = WrongPassword;
  factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  factory AuthFailure.invalidDisplayName() = InvalidDisplayName;
}

extension AuthFailureExtension on AuthFailure {
  String description() {
    if (this == AuthFailure.serverError()) {
      return "Server Error";
    } else if (this == AuthFailure.userNotFound()) {
      return "User Not Found";
    } else if (this == AuthFailure.userDisabled()) {
      return "User Disabled";
    } else if (this == AuthFailure.wrongPassword()) {
      return "Wrong Password";
    } else if (this == AuthFailure.emailAlreadyInUse()) {
      return "Email Already in Use";
    } else if (this == AuthFailure.invalidDisplayName()) {
      return "Invalid User Name";
    } else {
      return "Unknown Error";
    }
  }
}
