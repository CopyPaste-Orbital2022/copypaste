part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.updateUserState() = UpdateUserState;
  const factory AuthEvent.logOut() = LogOut;
}
