import 'dart:convert';
import 'package:copypaste/core/cloud/sp_cloud.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISPCloudAuth)
class SPCloudAuthImpl extends ISPCloudAuth {
  SPCloudAuthImpl();
}

class ISPCloudAuth extends ISPCloud {
  ISPCloudAuth({
    super.scheme = 'https',
    super.host = 'fierce-dusk-15069.herokuapp.com',
    super.port,
    super.pathSegments = const ['api', 'v1', 'auth'],
  });

  /// registers a new user with the given [email] and [password].
  Future<http.Response> register({
    required String email,
    required String password,
    required String userName,
  }) async {
    return await Client().post(
      getUri(['register']),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'user_name': userName,
        'email': email,
        'password': password,
      }),
    );
  }

  /// logs in a user with the given [email] and [password].
  Future<http.Response> logIn({
    required String email,
    required String password,
  }) async {
    debugPrint(getUri(['login']).toString());
    return await Client().post(
      getUri(['login']),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );
  }

  /// logs the user out
  Future<http.Response> logOut({
    required String userId,
    required String email,
  }) async {
    return await Client().post(
      getUri(['logout']),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'user_id': userId,
        'email': email,
      }),
    );
  }
}
