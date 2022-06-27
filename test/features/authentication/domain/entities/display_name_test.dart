import 'package:flutter_test/flutter_test.dart';
import 'package:copypaste/features/authentication/domain/entities/display_name.dart';

void main() {
  // Write tests for features/authentication/domain/entities/display_name.dart here.
  group(
    'test display name validation',
    () {
      test(
        'should return a valid display name',
        () async {
          // arrange
          final displayName = DisplayName('test');
          // assert
          expect(displayName.isValid(), true);
        },
      );
      test(
        'should return an invalid display name when the input string is empty',
        () async {
          // arrange
          final displayName = DisplayName('');
          // assert
          expect(displayName.isValid(), false);
        },
      );

      test(
        'should return an invalid display name when the input string is greater than 128 characters',
        () async {
          // arrange
          final displayName = DisplayName('a' * 129);
          // assert
          expect(displayName.isValid(), false);
        },
      );
    },
  );
}
