import 'package:dartz/dartz.dart';
import '../../../../core/errors_and_failures/failures/value_failure.dart';
import '../../../../core/models/value_object.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  Email._(this.value);

  factory Email(String rawValue) {
    if (isValidEmailAddress(rawValue)) {
      return Email._(Right(rawValue));
    } else {
      return Email._(Left(InvalidEmail(rawValue, invalidEmailAddressReason)));
    }
  }

  static bool isValidEmailAddress(String rawValue) {
    final RegExp emailRegExp = RegExp(
        r"""^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)+$""");
    return emailRegExp.hasMatch(rawValue);
  }

  static const String invalidEmailAddressReason =
      "Please Enter a Valid Email Address!";
}
