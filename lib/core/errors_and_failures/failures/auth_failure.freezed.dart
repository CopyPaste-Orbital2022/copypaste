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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() wrongPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidDisplayName value) invalidDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, (v) => _then(v as _$ServerError));

  @override
  _$ServerError get _value => super._value as _$ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() wrongPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidDisplayName,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidDisplayName value) invalidDisplayName,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$UserNotFoundCopyWith<$Res> {
  factory _$$UserNotFoundCopyWith(
          _$UserNotFound value, $Res Function(_$UserNotFound) then) =
      __$$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$UserNotFoundCopyWith<$Res> {
  __$$UserNotFoundCopyWithImpl(
      _$UserNotFound _value, $Res Function(_$UserNotFound) _then)
      : super(_value, (v) => _then(v as _$UserNotFound));

  @override
  _$UserNotFound get _value => super._value as _$UserNotFound;
}

/// @nodoc

class _$UserNotFound implements UserNotFound {
  _$UserNotFound();

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() wrongPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidDisplayName,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidDisplayName value) invalidDisplayName,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements AuthFailure {
  factory UserNotFound() = _$UserNotFound;
}

/// @nodoc
abstract class _$$UserDisabledCopyWith<$Res> {
  factory _$$UserDisabledCopyWith(
          _$UserDisabled value, $Res Function(_$UserDisabled) then) =
      __$$UserDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDisabledCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$UserDisabledCopyWith<$Res> {
  __$$UserDisabledCopyWithImpl(
      _$UserDisabled _value, $Res Function(_$UserDisabled) _then)
      : super(_value, (v) => _then(v as _$UserDisabled));

  @override
  _$UserDisabled get _value => super._value as _$UserDisabled;
}

/// @nodoc

class _$UserDisabled implements UserDisabled {
  _$UserDisabled();

  @override
  String toString() {
    return 'AuthFailure.userDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() wrongPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidDisplayName,
  }) {
    return userDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
  }) {
    return userDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidDisplayName value) invalidDisplayName,
  }) {
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
  }) {
    return userDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class UserDisabled implements AuthFailure {
  factory UserDisabled() = _$UserDisabled;
}

/// @nodoc
abstract class _$$WrongPasswordCopyWith<$Res> {
  factory _$$WrongPasswordCopyWith(
          _$WrongPassword value, $Res Function(_$WrongPassword) then) =
      __$$WrongPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$WrongPasswordCopyWith<$Res> {
  __$$WrongPasswordCopyWithImpl(
      _$WrongPassword _value, $Res Function(_$WrongPassword) _then)
      : super(_value, (v) => _then(v as _$WrongPassword));

  @override
  _$WrongPassword get _value => super._value as _$WrongPassword;
}

/// @nodoc

class _$WrongPassword implements WrongPassword {
  _$WrongPassword();

  @override
  String toString() {
    return 'AuthFailure.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() wrongPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidDisplayName,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
  }) {
    return wrongPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidDisplayName value) invalidDisplayName,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class WrongPassword implements AuthFailure {
  factory WrongPassword() = _$WrongPassword;
}

/// @nodoc
abstract class _$$EmailAlreadyInUseCopyWith<$Res> {
  factory _$$EmailAlreadyInUseCopyWith(
          _$EmailAlreadyInUse value, $Res Function(_$EmailAlreadyInUse) then) =
      __$$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$EmailAlreadyInUseCopyWith<$Res> {
  __$$EmailAlreadyInUseCopyWithImpl(
      _$EmailAlreadyInUse _value, $Res Function(_$EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as _$EmailAlreadyInUse));

  @override
  _$EmailAlreadyInUse get _value => super._value as _$EmailAlreadyInUse;
}

/// @nodoc

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() wrongPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidDisplayName,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidDisplayName value) invalidDisplayName,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class _$$InvalidDisplayNameCopyWith<$Res> {
  factory _$$InvalidDisplayNameCopyWith(_$InvalidDisplayName value,
          $Res Function(_$InvalidDisplayName) then) =
      __$$InvalidDisplayNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidDisplayNameCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$InvalidDisplayNameCopyWith<$Res> {
  __$$InvalidDisplayNameCopyWithImpl(
      _$InvalidDisplayName _value, $Res Function(_$InvalidDisplayName) _then)
      : super(_value, (v) => _then(v as _$InvalidDisplayName));

  @override
  _$InvalidDisplayName get _value => super._value as _$InvalidDisplayName;
}

/// @nodoc

class _$InvalidDisplayName implements InvalidDisplayName {
  _$InvalidDisplayName();

  @override
  String toString() {
    return 'AuthFailure.invalidDisplayName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidDisplayName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() wrongPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidDisplayName,
  }) {
    return invalidDisplayName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
  }) {
    return invalidDisplayName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? wrongPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (invalidDisplayName != null) {
      return invalidDisplayName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidDisplayName value) invalidDisplayName,
  }) {
    return invalidDisplayName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
  }) {
    return invalidDisplayName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidDisplayName value)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (invalidDisplayName != null) {
      return invalidDisplayName(this);
    }
    return orElse();
  }
}

abstract class InvalidDisplayName implements AuthFailure {
  factory InvalidDisplayName() = _$InvalidDisplayName;
}
