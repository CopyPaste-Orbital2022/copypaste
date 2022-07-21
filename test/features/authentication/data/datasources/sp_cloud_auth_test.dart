import 'dart:convert';

import 'package:copypaste/features/authentication/data/datasources/sp_cloud_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'sp_cloud_auth_test.mocks.dart';

@GenerateMocks([Client])
void main() {
  group('test auth', () {
    late MockClient client;
    late SPCloudAuth auth;

    setUp(() {
      client = MockClient();
      auth = SPCloudAuth(
        client,
        scheme: 'https',
        host: 'www.tinyhacks.app',
        port: 443,
        pathSegments: const ['api', 'v1', 'auth'],
      );
    });

    test("test register", () async {
      // Arrange
      const String userName = 'test';
      const String email = 'test@tinyhacks.app';
      const String password = 'test';
      when(client.post(
        Uri.parse('https://www.tinyhacks.app/api/v1/auth/register'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'user_name': userName,
          'email': email,
          'password': password,
        }),
      )).thenAnswer((_) async => Response(json.encode({'user_id': '1'}), 200));
      // Act
      final response = await auth.register(email: email, password: password, userName: userName);
      // Assert
      expect(response.body, json.encode({'user_id': '1'}));
    });

    test("test login", () async {
      // Arrange
      const String email = 'test@tinyhacks.app';
      const String password = 'test';
      when(client.post(
        Uri.parse('https://www.tinyhacks.app/api/v1/auth/login'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'email': email,
          'password': password,
        }),
      )).thenAnswer((_) async => Response(json.encode({'user_id': '1'}), 200));
      // Act
      final response = await auth.logIn(email: email, password: password);
      // Assert
      expect(response.body, json.encode({'user_id': '1'}));
    });

    test("test logout", () async {
      // Arrange
      const String userId = '1';
      const String email = 'test@tinyhacks.app';
      when(client.post(
        Uri.parse('https://www.tinyhacks.app/api/v1/auth/logout'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'user_id': userId,
          'email': email,
        }),
      )).thenAnswer((_) async => Response(
          json.encode({
            'user_id': '1',
          }),
          200));
    });
  });
}
