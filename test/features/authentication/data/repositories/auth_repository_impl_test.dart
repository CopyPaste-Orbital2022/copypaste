import 'dart:convert';

import 'package:copypaste/core/errors_and_failures/failures/auth_failure.dart';
import 'package:copypaste/core/errors_and_failures/failures/value_failure.dart';
import 'package:copypaste/features/authentication/data/datasources/sp_cloud_auth.dart';
import 'package:copypaste/features/authentication/domain/entities/display_name.dart';
import 'package:copypaste/features/authentication/domain/entities/email.dart';
import 'package:copypaste/features/authentication/domain/entities/password.dart';
import 'package:copypaste/features/authentication/domain/entities/sp_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:copypaste/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'auth_repository_impl_test.mocks.dart';

@GenerateMocks([ISPCloudAuth, FlutterSecureStorage, Email, Password, DisplayName])
void main() {
  // Write tests for features/authentication/data/repositories/firebase_auth_repository_impl.dart here.

  group('AuthRepositoryImpl', () {
    late ISPCloudAuth mockCloudAuth;
    late FlutterSecureStorage storage;
    late AuthRepositoryImpl authRepository;
    late SPUser user;
    late Email email;
    late Password password;
    late DisplayName displayName;

    setUp(() {
      mockCloudAuth = MockISPCloudAuth();
      storage = MockFlutterSecureStorage();
      authRepository = AuthRepositoryImpl(mockCloudAuth, storage);
      user = const SPUser(uid: 'user_id', userName: 'user_name', email: 'test@tinyhacks.app');
      email = MockEmail();
      password = MockPassword();
      displayName = MockDisplayName();
    });
    group('getUser', () {
      test("should return the user when the user is not null", () {
        // Arrange
        authRepository.user = user;
        // Act
        // Assert
        expect(authRepository.getUser(), completion(equals(some(user))));
      });
      test("should return the user when the _user is null but user data is stored in persistence", () {
        // Arrange
        authRepository.user = null;
        when(storage.read(key: 'user_id')).thenAnswer((_) async => user.uid);
        when(storage.read(key: 'user_name')).thenAnswer((_) async => user.userName);
        when(storage.read(key: 'email')).thenAnswer((_) async => user.email);
        // Act

        // Assert
        expect(authRepository.getUser(), completion(equals(some(user))));
      });

      test("should return none when the user is null but the user data is not stored in persistence", () {
        // Arrange
        authRepository.user = null;
        when(storage.read(key: 'user_id')).thenAnswer((_) async => null);
        // Act

        // Assert
        expect(authRepository.getUser(), completion(equals(none())));
      });
    });

    group('logOut', () {
      test("should log out the user", () async {
        // Arrange
        authRepository.user = user;
        when(mockCloudAuth.logOut(userId: user.uid, email: user.email))
            .thenAnswer((_) async => Response('logged out', 200));
        when(storage.delete(key: 'user_id')).thenAnswer((_) async {
          return;
        });
        when(storage.delete(key: 'user_name')).thenAnswer((_) async {
          return;
        });
        when(storage.delete(key: 'email')).thenAnswer((_) async {
          return;
        });
        // Act
        await authRepository.logOut();
        // Assert
        verify(mockCloudAuth.logOut(userId: user.uid, email: user.email));
        verify(storage.delete(key: 'user_id'));
        verify(storage.delete(key: 'user_name'));
        verify(storage.delete(key: 'email'));
        expect(authRepository.user, null);
      });
    });

    group('signInWithEmailAndPassword', () {
      late String testPassword;
      setUp(() {
        testPassword = 'test_password';
        // Arrange
        when(mockCloudAuth.logIn(email: user.email, password: testPassword)).thenAnswer((_) async => Response(
            json.encode({
              'user_id': user.uid,
              'user_name': user.userName,
              'email': user.email,
            }),
            200));
        when(storage.write(key: 'user_id', value: user.uid)).thenAnswer((_) async {
          return;
        });
        when(storage.write(key: 'user_name', value: user.userName)).thenAnswer((_) async {
          return;
        });
        when(storage.write(key: 'email', value: user.email)).thenAnswer((_) async {
          return;
        });
        when(password.value).thenAnswer((_) => right(testPassword));
        when(email.value).thenAnswer((_) => right(user.email));
        when(displayName.value).thenAnswer((_) => right(user.userName));
      });
      test(
          "should log in the user when the password, email, and username values are all valid and the response format is correct",
          () async {
        // Act
        await authRepository.signInWithEmailAndPassword(email: email, password: password);
        // Assert
        verify(mockCloudAuth.logIn(email: user.email, password: testPassword));
        verify(storage.write(key: 'user_id', value: user.uid));
        verify(storage.write(key: 'user_name', value: user.userName));
        verify(storage.write(key: 'email', value: user.email));
        expect(authRepository.user, user);
      });

      test("should return an AuthFailure when the password is not valid", () async {
        const String failedReason = 'password is too short';
        // Arrange
        when(password.value).thenAnswer(
          (_) => left(
            ValueFailure.invalidPassword(
              testPassword,
              failedReason,
            ),
          ),
        );
        // Act
        final result = await authRepository.signInWithEmailAndPassword(email: email, password: password);
        // Assert
        expect(result.isLeft(), true);
        result.fold((l) {
          debugPrint(l.description());
          expect(l, isA<AuthFailureInvalidPassword>());
          expect(l.description(), isA<String>());
        }, (r) => null);
      });

      test("should return an AuthFailure when the email is not valid", () async {
        const String failedReason = 'email is invalid';
        // Arrange
        when(email.value).thenAnswer(
          (_) => left(
            ValueFailure.invalidEmail(
              user.email,
              failedReason,
            ),
          ),
        );
        // Act
        final result = await authRepository.signInWithEmailAndPassword(email: email, password: password);
        // Assert
        expect(result.isLeft(), true);
        result.fold((l) {
          debugPrint(l.description());
          expect(l, isA<AuthFailureInvalidEmail>());
          expect(l.description(), isA<String>());
        }, (r) => null);
      });
    });

    group('registerWithEmailAndPassword', () {
      late String testPassword;
      setUp(() {
        testPassword = 'test_password';
        // Arrange
        when(mockCloudAuth.register(email: user.email, password: testPassword, userName: user.userName))
            .thenAnswer((_) async => Response(
                json.encode({
                  'user_id': user.uid,
                  'user_name': user.userName,
                  'email': user.email,
                }),
                200));
        when(storage.write(key: 'user_id', value: user.uid)).thenAnswer((_) async {
          return;
        });
        when(storage.write(key: 'user_name', value: user.userName)).thenAnswer((_) async {
          return;
        });
        when(storage.write(key: 'email', value: user.email)).thenAnswer((_) async {
          return;
        });
        when(password.value).thenAnswer((_) => right(testPassword));
        when(email.value).thenAnswer((_) => right(user.email));
        when(displayName.value).thenAnswer((_) => right(user.userName));
      });
      test(
          "should sign up the user when the password, email, and username values are all valid and the response format is correct",
          () async {
        // Act
        await authRepository.registerWithEmailAndPassword(email: email, password: password, displayName: displayName);
        // Assert
        verify(mockCloudAuth.register(email: user.email, password: testPassword, userName: user.userName));
        verify(storage.write(key: 'user_id', value: user.uid));
        verify(storage.write(key: 'user_name', value: user.userName));
        verify(storage.write(key: 'email', value: user.email));
        expect(authRepository.user, user);
      });

      test("should return an AuthFailure when the password is not valid", () async {
        const String failedReason = 'password is too short';
        // Arrange
        when(password.value).thenAnswer(
          (_) => left(
            ValueFailure.invalidPassword(
              testPassword,
              failedReason,
            ),
          ),
        );
        // Act
        final result = await authRepository.registerWithEmailAndPassword(
            email: email, password: password, displayName: displayName);
        // Assert
        expect(result.isLeft(), true);
        result.fold((l) {
          debugPrint(l.description());
          expect(l, isA<AuthFailureInvalidPassword>());
          expect(l.description(), isA<String>());
        }, (r) => null);
      });

      test("should return an AuthFailure when the email is not valid", () async {
        const String failedReason = 'email is invalid';
        // Arrange
        when(email.value).thenAnswer(
          (_) => left(
            ValueFailure.invalidEmail(
              user.email,
              failedReason,
            ),
          ),
        );
        // Act
        final result = await authRepository.registerWithEmailAndPassword(
            email: email, password: password, displayName: displayName);
        // Assert
        expect(result.isLeft(), true);
        result.fold((l) {
          debugPrint(l.description());
          expect(l, isA<AuthFailureInvalidEmail>());
          expect(l.description(), isA<String>());
        }, (r) => null);
      });

      test("should return an User Name when the email is not valid", () async {
        const String failedReason = 'email is invalid';
        // Arrange
        when(displayName.value).thenAnswer(
          (_) => left(
            ValueFailure.invalidDisplayName(
              user.userName,
              failedReason,
            ),
          ),
        );
        // Act
        final result = await authRepository.registerWithEmailAndPassword(
            email: email, password: password, displayName: displayName);
        // Assert
        expect(result.isLeft(), true);
        result.fold((l) {
          debugPrint(l.description());
          expect(l, isA<AuthFailureInvalidDisplayName>());
          expect(l.description(), isA<String>());
        }, (r) => null);
      });
    });
  });
}
