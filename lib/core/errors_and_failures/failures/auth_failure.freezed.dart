// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) userDisabled,
    required TResult Function(String? message) wrongPassword,
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidDisplayName,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) invalidPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailureServerError value) serverError,
    required TResult Function(AuthFailureUserNotFound value) userNotFound,
    required TResult Function(AuthFailureUserDisabled value) userDisabled,
    required TResult Function(AuthFailureWrongPassword value) wrongPassword,
    required TResult Function(AuthFailureEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(AuthFailureInvalidDisplayName value)
        invalidDisplayName,
    required TResult Function(AuthFailureInvalidEmail value) invalidEmail,
    required TResult Function(AuthFailureInvalidPassword value) invalidPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$AuthFailureServerErrorCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureServerErrorCopyWith(_$AuthFailureServerError value,
          $Res Function(_$AuthFailureServerError) then) =
      __$$AuthFailureServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$AuthFailureServerErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$AuthFailureServerErrorCopyWith<$Res> {
  __$$AuthFailureServerErrorCopyWithImpl(_$AuthFailureServerError _value,
      $Res Function(_$AuthFailureServerError) _then)
      : super(_value, (v) => _then(v as _$AuthFailureServerError));

  @override
  _$AuthFailureServerError get _value =>
      super._value as _$AuthFailureServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthFailureServerError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailureServerError implements AuthFailureServerError {
  _$AuthFailureServerError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureServerError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AuthFailureServerErrorCopyWith<_$AuthFailureServerError> get copyWith =>
      __$$AuthFailureServerErrorCopyWithImpl<_$AuthFailureServerError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) userDisabled,
    required TResult Function(String? message) wrongPassword,
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidDisplayName,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) invalidPassword,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailureServerError value) serverError,
    required TResult Function(AuthFailureUserNotFound value) userNotFound,
    required TResult Function(AuthFailureUserDisabled value) userDisabled,
    required TResult Function(AuthFailureWrongPassword value) wrongPassword,
    required TResult Function(AuthFailureEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(AuthFailureInvalidDisplayName value)
        invalidDisplayName,
    required TResult Function(AuthFailureInvalidEmail value) invalidEmail,
    required TResult Function(AuthFailureInvalidPassword value) invalidPassword,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class AuthFailureServerError implements AuthFailure {
  factory AuthFailureServerError({final String? message}) =
      _$AuthFailureServerError;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthFailureServerErrorCopyWith<_$AuthFailureServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureUserNotFoundCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureUserNotFoundCopyWith(_$AuthFailureUserNotFound value,
          $Res Function(_$AuthFailureUserNotFound) then) =
      __$$AuthFailureUserNotFoundCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$AuthFailureUserNotFoundCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$AuthFailureUserNotFoundCopyWith<$Res> {
  __$$AuthFailureUserNotFoundCopyWithImpl(_$AuthFailureUserNotFound _value,
      $Res Function(_$AuthFailureUserNotFound) _then)
      : super(_value, (v) => _then(v as _$AuthFailureUserNotFound));

  @override
  _$AuthFailureUserNotFound get _value =>
      super._value as _$AuthFailureUserNotFound;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthFailureUserNotFound(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailureUserNotFound implements AuthFailureUserNotFound {
  _$AuthFailureUserNotFound({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.userNotFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureUserNotFound &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AuthFailureUserNotFoundCopyWith<_$AuthFailureUserNotFound> get copyWith =>
      __$$AuthFailureUserNotFoundCopyWithImpl<_$AuthFailureUserNotFound>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) userDisabled,
    required TResult Function(String? message) wrongPassword,
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidDisplayName,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) invalidPassword,
  }) {
    return userNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
  }) {
    return userNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailureServerError value) serverError,
    required TResult Function(AuthFailureUserNotFound value) userNotFound,
    required TResult Function(AuthFailureUserDisabled value) userDisabled,
    required TResult Function(AuthFailureWrongPassword value) wrongPassword,
    required TResult Function(AuthFailureEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(AuthFailureInvalidDisplayName value)
        invalidDisplayName,
    required TResult Function(AuthFailureInvalidEmail value) invalidEmail,
    required TResult Function(AuthFailureInvalidPassword value) invalidPassword,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class AuthFailureUserNotFound implements AuthFailure {
  factory AuthFailureUserNotFound({final String? message}) =
      _$AuthFailureUserNotFound;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthFailureUserNotFoundCopyWith<_$AuthFailureUserNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureUserDisabledCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureUserDisabledCopyWith(_$AuthFailureUserDisabled value,
          $Res Function(_$AuthFailureUserDisabled) then) =
      __$$AuthFailureUserDisabledCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$AuthFailureUserDisabledCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$AuthFailureUserDisabledCopyWith<$Res> {
  __$$AuthFailureUserDisabledCopyWithImpl(_$AuthFailureUserDisabled _value,
      $Res Function(_$AuthFailureUserDisabled) _then)
      : super(_value, (v) => _then(v as _$AuthFailureUserDisabled));

  @override
  _$AuthFailureUserDisabled get _value =>
      super._value as _$AuthFailureUserDisabled;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthFailureUserDisabled(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailureUserDisabled implements AuthFailureUserDisabled {
  _$AuthFailureUserDisabled({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.userDisabled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureUserDisabled &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AuthFailureUserDisabledCopyWith<_$AuthFailureUserDisabled> get copyWith =>
      __$$AuthFailureUserDisabledCopyWithImpl<_$AuthFailureUserDisabled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) userDisabled,
    required TResult Function(String? message) wrongPassword,
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidDisplayName,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) invalidPassword,
  }) {
    return userDisabled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
  }) {
    return userDisabled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailureServerError value) serverError,
    required TResult Function(AuthFailureUserNotFound value) userNotFound,
    required TResult Function(AuthFailureUserDisabled value) userDisabled,
    required TResult Function(AuthFailureWrongPassword value) wrongPassword,
    required TResult Function(AuthFailureEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(AuthFailureInvalidDisplayName value)
        invalidDisplayName,
    required TResult Function(AuthFailureInvalidEmail value) invalidEmail,
    required TResult Function(AuthFailureInvalidPassword value) invalidPassword,
  }) {
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
  }) {
    return userDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class AuthFailureUserDisabled implements AuthFailure {
  factory AuthFailureUserDisabled({final String? message}) =
      _$AuthFailureUserDisabled;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthFailureUserDisabledCopyWith<_$AuthFailureUserDisabled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureWrongPasswordCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureWrongPasswordCopyWith(_$AuthFailureWrongPassword value,
          $Res Function(_$AuthFailureWrongPassword) then) =
      __$$AuthFailureWrongPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$AuthFailureWrongPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$AuthFailureWrongPasswordCopyWith<$Res> {
  __$$AuthFailureWrongPasswordCopyWithImpl(_$AuthFailureWrongPassword _value,
      $Res Function(_$AuthFailureWrongPassword) _then)
      : super(_value, (v) => _then(v as _$AuthFailureWrongPassword));

  @override
  _$AuthFailureWrongPassword get _value =>
      super._value as _$AuthFailureWrongPassword;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthFailureWrongPassword(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailureWrongPassword implements AuthFailureWrongPassword {
  _$AuthFailureWrongPassword({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.wrongPassword(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureWrongPassword &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AuthFailureWrongPasswordCopyWith<_$AuthFailureWrongPassword>
      get copyWith =>
          __$$AuthFailureWrongPasswordCopyWithImpl<_$AuthFailureWrongPassword>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) userDisabled,
    required TResult Function(String? message) wrongPassword,
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidDisplayName,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) invalidPassword,
  }) {
    return wrongPassword(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
  }) {
    return wrongPassword?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailureServerError value) serverError,
    required TResult Function(AuthFailureUserNotFound value) userNotFound,
    required TResult Function(AuthFailureUserDisabled value) userDisabled,
    required TResult Function(AuthFailureWrongPassword value) wrongPassword,
    required TResult Function(AuthFailureEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(AuthFailureInvalidDisplayName value)
        invalidDisplayName,
    required TResult Function(AuthFailureInvalidEmail value) invalidEmail,
    required TResult Function(AuthFailureInvalidPassword value) invalidPassword,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class AuthFailureWrongPassword implements AuthFailure {
  factory AuthFailureWrongPassword({final String? message}) =
      _$AuthFailureWrongPassword;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthFailureWrongPasswordCopyWith<_$AuthFailureWrongPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureEmailAlreadyInUseCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureEmailAlreadyInUseCopyWith(
          _$AuthFailureEmailAlreadyInUse value,
          $Res Function(_$AuthFailureEmailAlreadyInUse) then) =
      __$$AuthFailureEmailAlreadyInUseCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$AuthFailureEmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$AuthFailureEmailAlreadyInUseCopyWith<$Res> {
  __$$AuthFailureEmailAlreadyInUseCopyWithImpl(
      _$AuthFailureEmailAlreadyInUse _value,
      $Res Function(_$AuthFailureEmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as _$AuthFailureEmailAlreadyInUse));

  @override
  _$AuthFailureEmailAlreadyInUse get _value =>
      super._value as _$AuthFailureEmailAlreadyInUse;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthFailureEmailAlreadyInUse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailureEmailAlreadyInUse implements AuthFailureEmailAlreadyInUse {
  _$AuthFailureEmailAlreadyInUse({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureEmailAlreadyInUse &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AuthFailureEmailAlreadyInUseCopyWith<_$AuthFailureEmailAlreadyInUse>
      get copyWith => __$$AuthFailureEmailAlreadyInUseCopyWithImpl<
          _$AuthFailureEmailAlreadyInUse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) userDisabled,
    required TResult Function(String? message) wrongPassword,
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidDisplayName,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) invalidPassword,
  }) {
    return emailAlreadyInUse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
  }) {
    return emailAlreadyInUse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailureServerError value) serverError,
    required TResult Function(AuthFailureUserNotFound value) userNotFound,
    required TResult Function(AuthFailureUserDisabled value) userDisabled,
    required TResult Function(AuthFailureWrongPassword value) wrongPassword,
    required TResult Function(AuthFailureEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(AuthFailureInvalidDisplayName value)
        invalidDisplayName,
    required TResult Function(AuthFailureInvalidEmail value) invalidEmail,
    required TResult Function(AuthFailureInvalidPassword value) invalidPassword,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class AuthFailureEmailAlreadyInUse implements AuthFailure {
  factory AuthFailureEmailAlreadyInUse({final String? message}) =
      _$AuthFailureEmailAlreadyInUse;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthFailureEmailAlreadyInUseCopyWith<_$AuthFailureEmailAlreadyInUse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureInvalidDisplayNameCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureInvalidDisplayNameCopyWith(
          _$AuthFailureInvalidDisplayName value,
          $Res Function(_$AuthFailureInvalidDisplayName) then) =
      __$$AuthFailureInvalidDisplayNameCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$AuthFailureInvalidDisplayNameCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$AuthFailureInvalidDisplayNameCopyWith<$Res> {
  __$$AuthFailureInvalidDisplayNameCopyWithImpl(
      _$AuthFailureInvalidDisplayName _value,
      $Res Function(_$AuthFailureInvalidDisplayName) _then)
      : super(_value, (v) => _then(v as _$AuthFailureInvalidDisplayName));

  @override
  _$AuthFailureInvalidDisplayName get _value =>
      super._value as _$AuthFailureInvalidDisplayName;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthFailureInvalidDisplayName(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailureInvalidDisplayName implements AuthFailureInvalidDisplayName {
  _$AuthFailureInvalidDisplayName({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.invalidDisplayName(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureInvalidDisplayName &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AuthFailureInvalidDisplayNameCopyWith<_$AuthFailureInvalidDisplayName>
      get copyWith => __$$AuthFailureInvalidDisplayNameCopyWithImpl<
          _$AuthFailureInvalidDisplayName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) userDisabled,
    required TResult Function(String? message) wrongPassword,
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidDisplayName,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) invalidPassword,
  }) {
    return invalidDisplayName(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
  }) {
    return invalidDisplayName?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidDisplayName != null) {
      return invalidDisplayName(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailureServerError value) serverError,
    required TResult Function(AuthFailureUserNotFound value) userNotFound,
    required TResult Function(AuthFailureUserDisabled value) userDisabled,
    required TResult Function(AuthFailureWrongPassword value) wrongPassword,
    required TResult Function(AuthFailureEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(AuthFailureInvalidDisplayName value)
        invalidDisplayName,
    required TResult Function(AuthFailureInvalidEmail value) invalidEmail,
    required TResult Function(AuthFailureInvalidPassword value) invalidPassword,
  }) {
    return invalidDisplayName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
  }) {
    return invalidDisplayName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidDisplayName != null) {
      return invalidDisplayName(this);
    }
    return orElse();
  }
}

abstract class AuthFailureInvalidDisplayName implements AuthFailure {
  factory AuthFailureInvalidDisplayName({final String? message}) =
      _$AuthFailureInvalidDisplayName;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthFailureInvalidDisplayNameCopyWith<_$AuthFailureInvalidDisplayName>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureInvalidEmailCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureInvalidEmailCopyWith(_$AuthFailureInvalidEmail value,
          $Res Function(_$AuthFailureInvalidEmail) then) =
      __$$AuthFailureInvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$AuthFailureInvalidEmailCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$AuthFailureInvalidEmailCopyWith<$Res> {
  __$$AuthFailureInvalidEmailCopyWithImpl(_$AuthFailureInvalidEmail _value,
      $Res Function(_$AuthFailureInvalidEmail) _then)
      : super(_value, (v) => _then(v as _$AuthFailureInvalidEmail));

  @override
  _$AuthFailureInvalidEmail get _value =>
      super._value as _$AuthFailureInvalidEmail;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthFailureInvalidEmail(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailureInvalidEmail implements AuthFailureInvalidEmail {
  _$AuthFailureInvalidEmail({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.invalidEmail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureInvalidEmail &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AuthFailureInvalidEmailCopyWith<_$AuthFailureInvalidEmail> get copyWith =>
      __$$AuthFailureInvalidEmailCopyWithImpl<_$AuthFailureInvalidEmail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) userDisabled,
    required TResult Function(String? message) wrongPassword,
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidDisplayName,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) invalidPassword,
  }) {
    return invalidEmail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
  }) {
    return invalidEmail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailureServerError value) serverError,
    required TResult Function(AuthFailureUserNotFound value) userNotFound,
    required TResult Function(AuthFailureUserDisabled value) userDisabled,
    required TResult Function(AuthFailureWrongPassword value) wrongPassword,
    required TResult Function(AuthFailureEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(AuthFailureInvalidDisplayName value)
        invalidDisplayName,
    required TResult Function(AuthFailureInvalidEmail value) invalidEmail,
    required TResult Function(AuthFailureInvalidPassword value) invalidPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class AuthFailureInvalidEmail implements AuthFailure {
  factory AuthFailureInvalidEmail({final String? message}) =
      _$AuthFailureInvalidEmail;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthFailureInvalidEmailCopyWith<_$AuthFailureInvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureInvalidPasswordCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureInvalidPasswordCopyWith(
          _$AuthFailureInvalidPassword value,
          $Res Function(_$AuthFailureInvalidPassword) then) =
      __$$AuthFailureInvalidPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$AuthFailureInvalidPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$AuthFailureInvalidPasswordCopyWith<$Res> {
  __$$AuthFailureInvalidPasswordCopyWithImpl(
      _$AuthFailureInvalidPassword _value,
      $Res Function(_$AuthFailureInvalidPassword) _then)
      : super(_value, (v) => _then(v as _$AuthFailureInvalidPassword));

  @override
  _$AuthFailureInvalidPassword get _value =>
      super._value as _$AuthFailureInvalidPassword;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthFailureInvalidPassword(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailureInvalidPassword implements AuthFailureInvalidPassword {
  _$AuthFailureInvalidPassword({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.invalidPassword(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureInvalidPassword &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AuthFailureInvalidPasswordCopyWith<_$AuthFailureInvalidPassword>
      get copyWith => __$$AuthFailureInvalidPasswordCopyWithImpl<
          _$AuthFailureInvalidPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message) userNotFound,
    required TResult Function(String? message) userDisabled,
    required TResult Function(String? message) wrongPassword,
    required TResult Function(String? message) emailAlreadyInUse,
    required TResult Function(String? message) invalidDisplayName,
    required TResult Function(String? message) invalidEmail,
    required TResult Function(String? message) invalidPassword,
  }) {
    return invalidPassword(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
  }) {
    return invalidPassword?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message)? userNotFound,
    TResult Function(String? message)? userDisabled,
    TResult Function(String? message)? wrongPassword,
    TResult Function(String? message)? emailAlreadyInUse,
    TResult Function(String? message)? invalidDisplayName,
    TResult Function(String? message)? invalidEmail,
    TResult Function(String? message)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFailureServerError value) serverError,
    required TResult Function(AuthFailureUserNotFound value) userNotFound,
    required TResult Function(AuthFailureUserDisabled value) userDisabled,
    required TResult Function(AuthFailureWrongPassword value) wrongPassword,
    required TResult Function(AuthFailureEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(AuthFailureInvalidDisplayName value)
        invalidDisplayName,
    required TResult Function(AuthFailureInvalidEmail value) invalidEmail,
    required TResult Function(AuthFailureInvalidPassword value) invalidPassword,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFailureServerError value)? serverError,
    TResult Function(AuthFailureUserNotFound value)? userNotFound,
    TResult Function(AuthFailureUserDisabled value)? userDisabled,
    TResult Function(AuthFailureWrongPassword value)? wrongPassword,
    TResult Function(AuthFailureEmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(AuthFailureInvalidDisplayName value)? invalidDisplayName,
    TResult Function(AuthFailureInvalidEmail value)? invalidEmail,
    TResult Function(AuthFailureInvalidPassword value)? invalidPassword,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class AuthFailureInvalidPassword implements AuthFailure {
  factory AuthFailureInvalidPassword({final String? message}) =
      _$AuthFailureInvalidPassword;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthFailureInvalidPasswordCopyWith<_$AuthFailureInvalidPassword>
      get copyWith => throw _privateConstructorUsedError;
}
