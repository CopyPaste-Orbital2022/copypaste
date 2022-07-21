// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get value => throw _privateConstructorUsedError;
  String get failedReason => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, String failedReason) invalidEmail,
    required TResult Function(T value, String failedReason) invalidPassword,
    required TResult Function(T value, String failedReason) invalidDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, String failedReason)? invalidEmail,
    TResult Function(T value, String failedReason)? invalidPassword,
    TResult Function(T value, String failedReason)? invalidDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, String failedReason)? invalidEmail,
    TResult Function(T value, String failedReason)? invalidPassword,
    TResult Function(T value, String failedReason)? invalidDisplayName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidDisplayName<T> value) invalidDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidDisplayName<T> value)? invalidDisplayName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidDisplayName<T> value)? invalidDisplayName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T value, String failedReason});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? failedReason = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      failedReason: failedReason == freezed
          ? _value.failedReason
          : failedReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T value, String failedReason});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail<T>));

  @override
  _$InvalidEmail<T> get _value => super._value as _$InvalidEmail<T>;

  @override
  $Res call({
    Object? value = freezed,
    Object? failedReason = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      failedReason == freezed
          ? _value.failedReason
          : failedReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail(this.value, this.failedReason);

  @override
  final T value;
  @override
  final String failedReason;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(value: $value, failedReason: $failedReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.failedReason, failedReason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(failedReason));

  @JsonKey(ignore: true)
  @override
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, String failedReason) invalidEmail,
    required TResult Function(T value, String failedReason) invalidPassword,
    required TResult Function(T value, String failedReason) invalidDisplayName,
  }) {
    return invalidEmail(value, failedReason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, String failedReason)? invalidEmail,
    TResult Function(T value, String failedReason)? invalidPassword,
    TResult Function(T value, String failedReason)? invalidDisplayName,
  }) {
    return invalidEmail?.call(value, failedReason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, String failedReason)? invalidEmail,
    TResult Function(T value, String failedReason)? invalidPassword,
    TResult Function(T value, String failedReason)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(value, failedReason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidDisplayName<T> value) invalidDisplayName,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidDisplayName<T> value)? invalidDisplayName,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidDisplayName<T> value)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail(final T value, final String failedReason) =
      _$InvalidEmail<T>;

  @override
  T get value;
  @override
  String get failedReason;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidPasswordCopyWith(_$InvalidPassword<T> value,
          $Res Function(_$InvalidPassword<T>) then) =
      __$$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T value, String failedReason});
}

/// @nodoc
class __$$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidPasswordCopyWith<T, $Res> {
  __$$InvalidPasswordCopyWithImpl(
      _$InvalidPassword<T> _value, $Res Function(_$InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidPassword<T>));

  @override
  _$InvalidPassword<T> get _value => super._value as _$InvalidPassword<T>;

  @override
  $Res call({
    Object? value = freezed,
    Object? failedReason = freezed,
  }) {
    return _then(_$InvalidPassword<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      failedReason == freezed
          ? _value.failedReason
          : failedReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword(this.value, this.failedReason);

  @override
  final T value;
  @override
  final String failedReason;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(value: $value, failedReason: $failedReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPassword<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.failedReason, failedReason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(failedReason));

  @JsonKey(ignore: true)
  @override
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      __$$InvalidPasswordCopyWithImpl<T, _$InvalidPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, String failedReason) invalidEmail,
    required TResult Function(T value, String failedReason) invalidPassword,
    required TResult Function(T value, String failedReason) invalidDisplayName,
  }) {
    return invalidPassword(value, failedReason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, String failedReason)? invalidEmail,
    TResult Function(T value, String failedReason)? invalidPassword,
    TResult Function(T value, String failedReason)? invalidDisplayName,
  }) {
    return invalidPassword?.call(value, failedReason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, String failedReason)? invalidEmail,
    TResult Function(T value, String failedReason)? invalidPassword,
    TResult Function(T value, String failedReason)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(value, failedReason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidDisplayName<T> value) invalidDisplayName,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidDisplayName<T> value)? invalidDisplayName,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidDisplayName<T> value)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword(final T value, final String failedReason) =
      _$InvalidPassword<T>;

  @override
  T get value;
  @override
  String get failedReason;
  @override
  @JsonKey(ignore: true)
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidDisplayNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidDisplayNameCopyWith(_$InvalidDisplayName<T> value,
          $Res Function(_$InvalidDisplayName<T>) then) =
      __$$InvalidDisplayNameCopyWithImpl<T, $Res>;
  @override
  $Res call({T value, String failedReason});
}

/// @nodoc
class __$$InvalidDisplayNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidDisplayNameCopyWith<T, $Res> {
  __$$InvalidDisplayNameCopyWithImpl(_$InvalidDisplayName<T> _value,
      $Res Function(_$InvalidDisplayName<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidDisplayName<T>));

  @override
  _$InvalidDisplayName<T> get _value => super._value as _$InvalidDisplayName<T>;

  @override
  $Res call({
    Object? value = freezed,
    Object? failedReason = freezed,
  }) {
    return _then(_$InvalidDisplayName<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      failedReason == freezed
          ? _value.failedReason
          : failedReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidDisplayName<T> implements InvalidDisplayName<T> {
  const _$InvalidDisplayName(this.value, this.failedReason);

  @override
  final T value;
  @override
  final String failedReason;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDisplayName(value: $value, failedReason: $failedReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidDisplayName<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.failedReason, failedReason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(failedReason));

  @JsonKey(ignore: true)
  @override
  _$$InvalidDisplayNameCopyWith<T, _$InvalidDisplayName<T>> get copyWith =>
      __$$InvalidDisplayNameCopyWithImpl<T, _$InvalidDisplayName<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, String failedReason) invalidEmail,
    required TResult Function(T value, String failedReason) invalidPassword,
    required TResult Function(T value, String failedReason) invalidDisplayName,
  }) {
    return invalidDisplayName(value, failedReason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, String failedReason)? invalidEmail,
    TResult Function(T value, String failedReason)? invalidPassword,
    TResult Function(T value, String failedReason)? invalidDisplayName,
  }) {
    return invalidDisplayName?.call(value, failedReason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, String failedReason)? invalidEmail,
    TResult Function(T value, String failedReason)? invalidPassword,
    TResult Function(T value, String failedReason)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (invalidDisplayName != null) {
      return invalidDisplayName(value, failedReason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidDisplayName<T> value) invalidDisplayName,
  }) {
    return invalidDisplayName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidDisplayName<T> value)? invalidDisplayName,
  }) {
    return invalidDisplayName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidDisplayName<T> value)? invalidDisplayName,
    required TResult orElse(),
  }) {
    if (invalidDisplayName != null) {
      return invalidDisplayName(this);
    }
    return orElse();
  }
}

abstract class InvalidDisplayName<T> implements ValueFailure<T> {
  const factory InvalidDisplayName(final T value, final String failedReason) =
      _$InvalidDisplayName<T>;

  @override
  T get value;
  @override
  String get failedReason;
  @override
  @JsonKey(ignore: true)
  _$$InvalidDisplayNameCopyWith<T, _$InvalidDisplayName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
