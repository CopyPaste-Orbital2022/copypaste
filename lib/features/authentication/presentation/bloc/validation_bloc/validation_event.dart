part of 'validation_bloc.dart';

@freezed
class ValidationEvent with _$ValidationEvent {
  factory ValidationEvent.emailChanged(String emailStr) = EmailChanged;
  factory ValidationEvent.passwordChanged(String passwordStr) = PasswordChanged;
  factory ValidationEvent.displayNameChanged(String displayNameStr) =
      DisplayNameChanged;
  factory ValidationEvent.toggleSignInAndRegisterPage() =
      ToggleSignInAndRegisterPage;
  factory ValidationEvent.buttonPressed() = ButtonPressed;
}
