import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.updateUserState() = UpdateUserState;
  const factory AuthEvent.logOut() = LogOut;
}
