import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:copypaste/features/authentication/domain/entities/email.dart';

void main() {
  // Write tests for features/authentication/domain/entities/email.dart here.
  group(
    'test email validation',
    () {
      test('should return a valid email', () {
        // arrange
        final email = Email('test@tinyhacks.io');
        // assert
        expect(email.isValid(), true);
      });
      test('should return an invalid email when the input string is empty', () {
        // arrange
        final email = Email('');
        // assert
        expect(email.isValid(), false);
      });
      test(
          'should return an invalid email when the input string does not have a dot after the @ sign',
          () {
        // arrange
        final email = Email('test@tinyhacks');
        // assert
        expect(email.isValid(), false);
      });
      test(
          'should return an invalid email when the input string does not have an @ sign',
          () {
        // arrange
        final email = Email('testtinyhacks.io');
        // assert
        expect(email.isValid(), false);
      });
    },
  );
}
