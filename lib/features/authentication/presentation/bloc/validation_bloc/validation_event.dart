import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_event.freezed.dart';

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
