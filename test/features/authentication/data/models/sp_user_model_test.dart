import 'package:copypaste/features/authentication/domain/entities/sp_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:copypaste/features/authentication/data/models/sp_user_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'sp_user_model_test.mocks.dart';

@GenerateMocks([User])
void main() {
  // Write tests for features/authentication/data/models/sp_user_model.dart here.

  group("test casting", () {
    test(
      'should return a SPUser when casted',
      () async {
        // arrange
        const SPUserModel model = SPUserModel(
          uid: "1",
          userName: "test",
          email: "test@tinyhacks.io",
        );

        // assert
        expect(model is SPUser, true);
      },
    );
  });

  group(
    'test json conversion',
    () {
      late SPUserModel model;

      setUp(() {
        model = const SPUserModel(
          uid: "1",
          userName: "test",
          email: "test@tinyhacks.io",
        );
      });

      test(
        'should return a json map when converted',
        () async {
          // assert
          expect(model.toJson(), {
            "id": "1",
            "name": "test",
            "email": "test@tinyhacks.io",
          });
        },
      );

      test(
        'should return a SPUser when converted',
        () async {
          // act
          final result = SPUserModel.fromJson(model.toJson());

          // assert
          expect(result, model);
        },
      );
    },
  );

  group(
    'test fromFirebase',
    () {
      late MockUser user;
      const id = "1";
      const name = "test";
      const email = "test@tinyhacks.io";

      setUp(() {
        user = MockUser();
        when(user.uid).thenReturn(id);
        when(user.displayName).thenReturn(name);
        when(user.email).thenReturn(email);
      });
      test(
        'should return a SPUser from FirebaseUser',
        () async {
          // arrange
          const actual = SPUserModel(uid: id, userName: name, email: email);
          // act
          final result = SPUserModel.fromFirebase(user);
          // assert
          expect(result, actual);
        },
      );
    },
  );
}
