import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail(T value, String failedReason) =
      InvalidEmail;
  const factory ValueFailure.invalidPassword(T value, String failedReason) =
      InvalidPassword;
  const factory ValueFailure.invalidDisplayName(T value, String failedReason) =
      InvalidDisplayName;
}
