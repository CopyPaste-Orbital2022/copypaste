import 'package:freezed_annotation/freezed_annotation.dart';
part 'sp_user.freezed.dart';

@freezed
class SPUser with _$SPUser {
  const factory SPUser({
    required String uid,
    required String userName,
    required String email,
  }) = _SPUser;
}
