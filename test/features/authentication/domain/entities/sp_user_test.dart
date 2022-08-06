import 'package:flutter_test/flutter_test.dart';
import 'package:copypaste/features/authentication/domain/entities/sp_user.dart';
import 'package:uuid/uuid.dart';

void main() {
  // Write tests for features/authentication/domain/entities/sp_user.dart here.
  group('test initialization', () {
    test('should return a valid sp user', () {
      final String id = const Uuid().v4();
      // arrange
      final spUser = SPUser(
        uid: id,
        userName: 'test',
        email: 'test@tinyhacks.io',
        password: 'test',
      );
      // assert
      expect(spUser.userName == 'test', true);
      expect(spUser.email == 'test@tinyhacks.io', true);
      expect(spUser.uid == id, true);
    });

    // test two users are equal if they have the same parameters
    test('should return a valid sp user', () {
      final String id = const Uuid().v4();
      // arrange
      final spUser1 = SPUser(uid: id, userName: 'test', email: 'test@tinyhacks.io', password: 'test');
      final spUser2 = SPUser(uid: id, userName: 'test', email: 'test@tinyhacks.io', password: 'test');
      // assert
      expect(spUser1 == spUser2, true);
    });
  });
}
