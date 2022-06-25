import 'package:dartz/dartz.dart';
import '../../../../core/errors_and_failures/failures/value_failure.dart';
import '../../../../core/models/value_object.dart';

class DisplayName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  DisplayName._(this.value);
  factory DisplayName(String value) {
    if (value.isNotEmpty && value.length < 128) {
      return DisplayName._(right(value));
    } else {
      return DisplayName._(left(
          ValueFailure.invalidDisplayName(value, displayNameFailedReason)));
    }
  }

  static const String displayNameFailedReason =
      "Invalid Display Name: Display Name must be between 1 and 128 characters long";
}
