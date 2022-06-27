import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:copypaste/features/authentication/domain/entities/password.dart';

void main() {
  // Write tests for features/authentication/domain/entities/password.dart here.
  group(
    'test password validation',
    () {
      test(
        'should return a valid password when the password is more than 8 characters, has a lowercase letter, an uppercase letter, and a number',
        () async {
          // arrange
          final password = Password('Test1234!');
          // assert
          expect(password.isValid(), true);
        },
      );
      test(
        'should return an invalid password when the input string is empty',
        () async {
          // arrange
          final password = Password('');
          // assert
          expect(password.isValid(), false);
        },
      );
      test(
        'should return an invalid password when the input string is less than 8 characters',
        () async {
          // arrange
          final password = Password('Test12');
          // assert
          expect(password.isValid(), false);
        },
      );
      test(
        'should return an invalid password when the input string does not have a lowercase letter',
        () async {
          // arrange
          final password = Password('TEST1234!');
          // assert
          expect(password.isValid(), false);
        },
      );
      test(
        'should return an invalid password when the input string does not have an uppercase letter',
        () async {
          // arrange
          final password = Password('test1234!');
          // assert
          expect(password.isValid(), false);
        },
      );
      test(
        'should return an invalid password when the input string does not have a number',
        () async {
          // arrange
          final password = Password('TestTest!');
          // assert
          expect(password.isValid(), false);
        },
      );
    },
  );
}
