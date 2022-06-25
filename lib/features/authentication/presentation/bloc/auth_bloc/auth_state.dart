import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/sp_user.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = InitialState;
  const factory AuthState.userSignedIn(SPUser user) = UserSignedIn;
  const factory AuthState.userNotSignedIn() = UserNotSignedIn;
}
