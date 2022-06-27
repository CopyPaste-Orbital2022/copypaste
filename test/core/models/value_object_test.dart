import 'package:copypaste/core/errors_and_failures/errors/unexpected_value_error.dart';
import 'package:copypaste/core/errors_and_failures/failures/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:copypaste/core/models/value_object.dart';
import 'package:mockito/mockito.dart';

class MockValueObject extends ValueObject<String> {
  MockValueObject(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
}

class MockValueFailure extends Mock implements ValueFailure<String> {}

void main() {
  group('test when value is valid', () {
    late MockValueObject mockValueObject;
    setUp(() {
      mockValueObject = MockValueObject(right('test'));
    });

    test('should be valid', () {
      expect(mockValueObject.isValid(), true);
    });

    test('should return value', () {
      expect(mockValueObject.getValueOrCrash(), "test");
    });

    test('should return unit', () {
      expect(mockValueObject.failureOrUnit, right(unit));
    });
  });

  group('test when value is invalid', () {
    late MockValueObject mockValueObject;
    setUp(() {
      mockValueObject = MockValueObject(left(MockValueFailure()));
    });

    test('should be invalid', () {
      expect(mockValueObject.isValid(), false);
    });

    test('should return value', () {
      expect(() => mockValueObject.getValueOrCrash(),
          throwsA(isA<UnexpectedValueError>()));
    });

    test('should return unit', () {
      expect(mockValueObject.failureOrUnit.isLeft(), true);
    });
  });
}
