part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = InitialState;
  const factory AuthState.userSignedIn(SPUser user) = UserSignedIn;
  const factory AuthState.userNotSignedIn() = UserNotSignedIn;
}
