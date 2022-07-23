// Mocks generated by Mockito 5.2.0 from annotations
// in copypaste/test/features/authentication/data/repositories/auth_repository_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:copypaste/core/errors_and_failures/failures/value_failure.dart'
    as _i8;
import 'package:copypaste/features/authentication/data/datasources/sp_cloud_auth.dart'
    as _i5;
import 'package:copypaste/features/authentication/domain/entities/display_name.dart'
    as _i10;
import 'package:copypaste/features/authentication/domain/entities/email.dart'
    as _i7;
import 'package:copypaste/features/authentication/domain/entities/password.dart'
    as _i9;
import 'package:dartz/dartz.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:http/http.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeClient_0 extends _i1.Fake implements _i2.Client {}

class _FakeResponse_1 extends _i1.Fake implements _i2.Response {}

class _FakeUri_2 extends _i1.Fake implements Uri {}

class _FakeIOSOptions_3 extends _i1.Fake implements _i3.IOSOptions {}

class _FakeAndroidOptions_4 extends _i1.Fake implements _i3.AndroidOptions {}

class _FakeLinuxOptions_5 extends _i1.Fake implements _i3.LinuxOptions {}

class _FakeWindowsOptions_6 extends _i1.Fake implements _i3.WindowsOptions {}

class _FakeWebOptions_7 extends _i1.Fake implements _i3.WebOptions {}

class _FakeMacOsOptions_8 extends _i1.Fake implements _i3.MacOsOptions {}

class _FakeEither_9<L, R> extends _i1.Fake implements _i4.Either<L, R> {}

/// A class which mocks [ISPCloudAuth].
///
/// See the documentation for Mockito's code generation for more information.
class MockISPCloudAuth extends _i1.Mock implements _i5.ISPCloudAuth {
  MockISPCloudAuth() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Client get client => (super.noSuchMethod(Invocation.getter(#client),
      returnValue: _FakeClient_0()) as _i2.Client);
  @override
  String get host =>
      (super.noSuchMethod(Invocation.getter(#host), returnValue: '') as String);
  @override
  String get scheme =>
      (super.noSuchMethod(Invocation.getter(#scheme), returnValue: '')
          as String);
  @override
  int get port =>
      (super.noSuchMethod(Invocation.getter(#port), returnValue: 0) as int);
  @override
  List<String> get pathSegments =>
      (super.noSuchMethod(Invocation.getter(#pathSegments),
          returnValue: <String>[]) as List<String>);
  @override
  _i6.Future<_i2.Response> register(
          {String? email, String? password, String? userName}) =>
      (super.noSuchMethod(
              Invocation.method(#register, [],
                  {#email: email, #password: password, #userName: userName}),
              returnValue: Future<_i2.Response>.value(_FakeResponse_1()))
          as _i6.Future<_i2.Response>);
  @override
  _i6.Future<_i2.Response> logIn({String? email, String? password}) => (super
      .noSuchMethod(
          Invocation.method(#logIn, [], {#email: email, #password: password}),
          returnValue: Future<_i2.Response>.value(_FakeResponse_1())) as _i6
      .Future<_i2.Response>);
  @override
  _i6.Future<_i2.Response> logOut({String? userId, String? email}) =>
      (super.noSuchMethod(
              Invocation.method(#logOut, [], {#userId: userId, #email: email}),
              returnValue: Future<_i2.Response>.value(_FakeResponse_1()))
          as _i6.Future<_i2.Response>);
  @override
  Uri getUri(List<String>? segments,
          {Map<String, String>? queryParameters, String? fragment}) =>
      (super.noSuchMethod(
          Invocation.method(#getUri, [segments],
              {#queryParameters: queryParameters, #fragment: fragment}),
          returnValue: _FakeUri_2()) as Uri);
}

/// A class which mocks [FlutterSecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterSecureStorage extends _i1.Mock
    implements _i3.FlutterSecureStorage {
  MockFlutterSecureStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.IOSOptions get iOptions =>
      (super.noSuchMethod(Invocation.getter(#iOptions),
          returnValue: _FakeIOSOptions_3()) as _i3.IOSOptions);
  @override
  _i3.AndroidOptions get aOptions =>
      (super.noSuchMethod(Invocation.getter(#aOptions),
          returnValue: _FakeAndroidOptions_4()) as _i3.AndroidOptions);
  @override
  _i3.LinuxOptions get lOptions =>
      (super.noSuchMethod(Invocation.getter(#lOptions),
          returnValue: _FakeLinuxOptions_5()) as _i3.LinuxOptions);
  @override
  _i3.WindowsOptions get wOptions =>
      (super.noSuchMethod(Invocation.getter(#wOptions),
          returnValue: _FakeWindowsOptions_6()) as _i3.WindowsOptions);
  @override
  _i3.WebOptions get webOptions =>
      (super.noSuchMethod(Invocation.getter(#webOptions),
          returnValue: _FakeWebOptions_7()) as _i3.WebOptions);
  @override
  _i3.MacOsOptions get mOptions =>
      (super.noSuchMethod(Invocation.getter(#mOptions),
          returnValue: _FakeMacOsOptions_8()) as _i3.MacOsOptions);
  @override
  _i6.Future<void> write(
          {String? key,
          String? value,
          _i3.IOSOptions? iOptions,
          _i3.AndroidOptions? aOptions,
          _i3.LinuxOptions? lOptions,
          _i3.WebOptions? webOptions,
          _i3.MacOsOptions? mOptions,
          _i3.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#write, [], {
            #key: key,
            #value: value,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<String?> read(
          {String? key,
          _i3.IOSOptions? iOptions,
          _i3.AndroidOptions? aOptions,
          _i3.LinuxOptions? lOptions,
          _i3.WebOptions? webOptions,
          _i3.MacOsOptions? mOptions,
          _i3.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#read, [], {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<String?>.value()) as _i6.Future<String?>);
  @override
  _i6.Future<bool> containsKey(
          {String? key,
          _i3.IOSOptions? iOptions,
          _i3.AndroidOptions? aOptions,
          _i3.LinuxOptions? lOptions,
          _i3.WebOptions? webOptions,
          _i3.MacOsOptions? mOptions,
          _i3.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#containsKey, [], {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<void> delete(
          {String? key,
          _i3.IOSOptions? iOptions,
          _i3.AndroidOptions? aOptions,
          _i3.LinuxOptions? lOptions,
          _i3.WebOptions? webOptions,
          _i3.MacOsOptions? mOptions,
          _i3.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#delete, [], {
            #key: key,
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<Map<String, String>> readAll(
          {_i3.IOSOptions? iOptions,
          _i3.AndroidOptions? aOptions,
          _i3.LinuxOptions? lOptions,
          _i3.WebOptions? webOptions,
          _i3.MacOsOptions? mOptions,
          _i3.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
              Invocation.method(#readAll, [], {
                #iOptions: iOptions,
                #aOptions: aOptions,
                #lOptions: lOptions,
                #webOptions: webOptions,
                #mOptions: mOptions,
                #wOptions: wOptions
              }),
              returnValue:
                  Future<Map<String, String>>.value(<String, String>{}))
          as _i6.Future<Map<String, String>>);
  @override
  _i6.Future<void> deleteAll(
          {_i3.IOSOptions? iOptions,
          _i3.AndroidOptions? aOptions,
          _i3.LinuxOptions? lOptions,
          _i3.WebOptions? webOptions,
          _i3.MacOsOptions? mOptions,
          _i3.WindowsOptions? wOptions}) =>
      (super.noSuchMethod(
          Invocation.method(#deleteAll, [], {
            #iOptions: iOptions,
            #aOptions: aOptions,
            #lOptions: lOptions,
            #webOptions: webOptions,
            #mOptions: mOptions,
            #wOptions: wOptions
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
}

/// A class which mocks [Email].
///
/// See the documentation for Mockito's code generation for more information.
class MockEmail extends _i1.Mock implements _i7.Email {
  MockEmail() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Either<_i8.ValueFailure<String>, String> get value =>
      (super.noSuchMethod(Invocation.getter(#value),
              returnValue: _FakeEither_9<_i8.ValueFailure<String>, String>())
          as _i4.Either<_i8.ValueFailure<String>, String>);
  @override
  _i4.Either<_i8.ValueFailure<String>, _i4.Unit> get failureOrUnit =>
      (super.noSuchMethod(Invocation.getter(#failureOrUnit),
              returnValue: _FakeEither_9<_i8.ValueFailure<String>, _i4.Unit>())
          as _i4.Either<_i8.ValueFailure<String>, _i4.Unit>);
  @override
  List<Object> get props =>
      (super.noSuchMethod(Invocation.getter(#props), returnValue: <Object>[])
          as List<Object>);
  @override
  bool isValid() =>
      (super.noSuchMethod(Invocation.method(#isValid, []), returnValue: false)
          as bool);
  @override
  String getValueOrCrash() =>
      (super.noSuchMethod(Invocation.method(#getValueOrCrash, []),
          returnValue: '') as String);
}

/// A class which mocks [Password].
///
/// See the documentation for Mockito's code generation for more information.
class MockPassword extends _i1.Mock implements _i9.Password {
  MockPassword() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Either<_i8.ValueFailure<String>, String> get value =>
      (super.noSuchMethod(Invocation.getter(#value),
              returnValue: _FakeEither_9<_i8.ValueFailure<String>, String>())
          as _i4.Either<_i8.ValueFailure<String>, String>);
  @override
  _i4.Either<_i8.ValueFailure<String>, _i4.Unit> get failureOrUnit =>
      (super.noSuchMethod(Invocation.getter(#failureOrUnit),
              returnValue: _FakeEither_9<_i8.ValueFailure<String>, _i4.Unit>())
          as _i4.Either<_i8.ValueFailure<String>, _i4.Unit>);
  @override
  List<Object> get props =>
      (super.noSuchMethod(Invocation.getter(#props), returnValue: <Object>[])
          as List<Object>);
  @override
  bool isValid() =>
      (super.noSuchMethod(Invocation.method(#isValid, []), returnValue: false)
          as bool);
  @override
  String getValueOrCrash() =>
      (super.noSuchMethod(Invocation.method(#getValueOrCrash, []),
          returnValue: '') as String);
}

/// A class which mocks [DisplayName].
///
/// See the documentation for Mockito's code generation for more information.
class MockDisplayName extends _i1.Mock implements _i10.DisplayName {
  MockDisplayName() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Either<_i8.ValueFailure<String>, String> get value =>
      (super.noSuchMethod(Invocation.getter(#value),
              returnValue: _FakeEither_9<_i8.ValueFailure<String>, String>())
          as _i4.Either<_i8.ValueFailure<String>, String>);
  @override
  _i4.Either<_i8.ValueFailure<String>, _i4.Unit> get failureOrUnit =>
      (super.noSuchMethod(Invocation.getter(#failureOrUnit),
              returnValue: _FakeEither_9<_i8.ValueFailure<String>, _i4.Unit>())
          as _i4.Either<_i8.ValueFailure<String>, _i4.Unit>);
  @override
  List<Object> get props =>
      (super.noSuchMethod(Invocation.getter(#props), returnValue: <Object>[])
          as List<Object>);
  @override
  bool isValid() =>
      (super.noSuchMethod(Invocation.method(#isValid, []), returnValue: false)
          as bool);
  @override
  String getValueOrCrash() =>
      (super.noSuchMethod(Invocation.method(#getValueOrCrash, []),
          returnValue: '') as String);
}
