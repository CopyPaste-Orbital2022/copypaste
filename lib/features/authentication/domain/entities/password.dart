import 'package:dartz/dartz.dart';
import '../../../../core/errors_and_failures/failures/value_failure.dart';
import '../../../../core/models/value_object.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  Password._(this.value);

  factory Password._failed(String rawValue, String failedReason) {
    return Password._(Left(InvalidPassword(rawValue, failedReason)));
  }

  factory Password(String rawValue) {
    if (rawValue.length < 8) {
      return Password._failed(rawValue, passwordIsTooShort);
    }
    if (!rawValue.contains(RegExp("[A-Z]"))) {
      return Password._failed(rawValue, passwordDoesNotHaveACapitalLetter);
    }
    if (!rawValue.contains(RegExp("[a-z]"))) {
      return Password._failed(rawValue, passwordDoesNotHaveALowerCaseLetter);
    }
    if (!rawValue.contains(RegExp("[0-9]"))) {
      return Password._failed(rawValue, passwordDoesNotHaveANumber);
    }

    return Password._(Right(rawValue));
  }

  factory Password.validateTwo(String firstRawValue, String secondRawValue) {
    ;
    if (firstRawValue != secondRawValue) {
      return Password._failed(firstRawValue, twoPasswordInputsAreNotSame);
    } else {
      return Password(firstRawValue);
    }
  }

  static const String passwordIsTooShort =
      "Please enter more than 8 characters for your password.";
  static const String passwordDoesNotHaveACapitalLetter =
      "Please at least include a capitalized letter in your password.";
  static const String passwordDoesNotHaveALowerCaseLetter =
      "Please at least include a lower-case letter in your password.";
  static const String passwordDoesNotHaveANumber =
      "Please at least include a number in your password.";
  static const String twoPasswordInputsAreNotSame =
      "Please make sure that you enter the same password";
}
