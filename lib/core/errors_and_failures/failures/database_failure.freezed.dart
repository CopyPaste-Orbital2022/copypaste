// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'database_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatabaseFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String failedReason) $default, {
    required TResult Function() hasNoDrawing,
    required TResult Function() userHasNotSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String failedReason)? $default, {
    TResult Function()? hasNoDrawing,
    TResult Function()? userHasNotSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String failedReason)? $default, {
    TResult Function()? hasNoDrawing,
    TResult Function()? userHasNotSignedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DatabaseFailure value) $default, {
    required TResult Function(DatabaseFailureHasNoDrawing value) hasNoDrawing,
    required TResult Function(DatabaseFailureUserHasNotSignedIn value)
        userHasNotSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseFailureCopyWith<$Res> {
  factory $DatabaseFailureCopyWith(
          DatabaseFailure value, $Res Function(DatabaseFailure) then) =
      _$DatabaseFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseFailureCopyWithImpl<$Res>
    implements $DatabaseFailureCopyWith<$Res> {
  _$DatabaseFailureCopyWithImpl(this._value, this._then);

  final DatabaseFailure _value;
  // ignore: unused_field
  final $Res Function(DatabaseFailure) _then;
}

/// @nodoc
abstract class _$$_DatabaseFailureCopyWith<$Res> {
  factory _$$_DatabaseFailureCopyWith(
          _$_DatabaseFailure value, $Res Function(_$_DatabaseFailure) then) =
      __$$_DatabaseFailureCopyWithImpl<$Res>;
  $Res call({String failedReason});
}

/// @nodoc
class __$$_DatabaseFailureCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$$_DatabaseFailureCopyWith<$Res> {
  __$$_DatabaseFailureCopyWithImpl(
      _$_DatabaseFailure _value, $Res Function(_$_DatabaseFailure) _then)
      : super(_value, (v) => _then(v as _$_DatabaseFailure));

  @override
  _$_DatabaseFailure get _value => super._value as _$_DatabaseFailure;

  @override
  $Res call({
    Object? failedReason = freezed,
  }) {
    return _then(_$_DatabaseFailure(
      failedReason == freezed
          ? _value.failedReason
          : failedReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DatabaseFailure implements _DatabaseFailure {
  const _$_DatabaseFailure(this.failedReason);

  @override
  final String failedReason;

  @override
  String toString() {
    return 'DatabaseFailure(failedReason: $failedReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatabaseFailure &&
            const DeepCollectionEquality()
                .equals(other.failedReason, failedReason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedReason));

  @JsonKey(ignore: true)
  @override
  _$$_DatabaseFailureCopyWith<_$_DatabaseFailure> get copyWith =>
      __$$_DatabaseFailureCopyWithImpl<_$_DatabaseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String failedReason) $default, {
    required TResult Function() hasNoDrawing,
    required TResult Function() userHasNotSignedIn,
  }) {
    return $default(failedReason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String failedReason)? $default, {
    TResult Function()? hasNoDrawing,
    TResult Function()? userHasNotSignedIn,
  }) {
    return $default?.call(failedReason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String failedReason)? $default, {
    TResult Function()? hasNoDrawing,
    TResult Function()? userHasNotSignedIn,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(failedReason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DatabaseFailure value) $default, {
    required TResult Function(DatabaseFailureHasNoDrawing value) hasNoDrawing,
    required TResult Function(DatabaseFailureUserHasNotSignedIn value)
        userHasNotSignedIn,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _DatabaseFailure implements DatabaseFailure {
  const factory _DatabaseFailure(final String failedReason) =
      _$_DatabaseFailure;

  String get failedReason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DatabaseFailureCopyWith<_$_DatabaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseFailureHasNoDrawingCopyWith<$Res> {
  factory _$$DatabaseFailureHasNoDrawingCopyWith(
          _$DatabaseFailureHasNoDrawing value,
          $Res Function(_$DatabaseFailureHasNoDrawing) then) =
      __$$DatabaseFailureHasNoDrawingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DatabaseFailureHasNoDrawingCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$$DatabaseFailureHasNoDrawingCopyWith<$Res> {
  __$$DatabaseFailureHasNoDrawingCopyWithImpl(
      _$DatabaseFailureHasNoDrawing _value,
      $Res Function(_$DatabaseFailureHasNoDrawing) _then)
      : super(_value, (v) => _then(v as _$DatabaseFailureHasNoDrawing));

  @override
  _$DatabaseFailureHasNoDrawing get _value =>
      super._value as _$DatabaseFailureHasNoDrawing;
}

/// @nodoc

class _$DatabaseFailureHasNoDrawing implements DatabaseFailureHasNoDrawing {
  const _$DatabaseFailureHasNoDrawing();

  @override
  String toString() {
    return 'DatabaseFailure.hasNoDrawing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureHasNoDrawing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String failedReason) $default, {
    required TResult Function() hasNoDrawing,
    required TResult Function() userHasNotSignedIn,
  }) {
    return hasNoDrawing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String failedReason)? $default, {
    TResult Function()? hasNoDrawing,
    TResult Function()? userHasNotSignedIn,
  }) {
    return hasNoDrawing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String failedReason)? $default, {
    TResult Function()? hasNoDrawing,
    TResult Function()? userHasNotSignedIn,
    required TResult orElse(),
  }) {
    if (hasNoDrawing != null) {
      return hasNoDrawing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DatabaseFailure value) $default, {
    required TResult Function(DatabaseFailureHasNoDrawing value) hasNoDrawing,
    required TResult Function(DatabaseFailureUserHasNotSignedIn value)
        userHasNotSignedIn,
  }) {
    return hasNoDrawing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
  }) {
    return hasNoDrawing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    required TResult orElse(),
  }) {
    if (hasNoDrawing != null) {
      return hasNoDrawing(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailureHasNoDrawing implements DatabaseFailure {
  const factory DatabaseFailureHasNoDrawing() = _$DatabaseFailureHasNoDrawing;
}

/// @nodoc
abstract class _$$DatabaseFailureUserHasNotSignedInCopyWith<$Res> {
  factory _$$DatabaseFailureUserHasNotSignedInCopyWith(
          _$DatabaseFailureUserHasNotSignedIn value,
          $Res Function(_$DatabaseFailureUserHasNotSignedIn) then) =
      __$$DatabaseFailureUserHasNotSignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DatabaseFailureUserHasNotSignedInCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$$DatabaseFailureUserHasNotSignedInCopyWith<$Res> {
  __$$DatabaseFailureUserHasNotSignedInCopyWithImpl(
      _$DatabaseFailureUserHasNotSignedIn _value,
      $Res Function(_$DatabaseFailureUserHasNotSignedIn) _then)
      : super(_value, (v) => _then(v as _$DatabaseFailureUserHasNotSignedIn));

  @override
  _$DatabaseFailureUserHasNotSignedIn get _value =>
      super._value as _$DatabaseFailureUserHasNotSignedIn;
}

/// @nodoc

class _$DatabaseFailureUserHasNotSignedIn
    implements DatabaseFailureUserHasNotSignedIn {
  const _$DatabaseFailureUserHasNotSignedIn();

  @override
  String toString() {
    return 'DatabaseFailure.userHasNotSignedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureUserHasNotSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String failedReason) $default, {
    required TResult Function() hasNoDrawing,
    required TResult Function() userHasNotSignedIn,
  }) {
    return userHasNotSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String failedReason)? $default, {
    TResult Function()? hasNoDrawing,
    TResult Function()? userHasNotSignedIn,
  }) {
    return userHasNotSignedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String failedReason)? $default, {
    TResult Function()? hasNoDrawing,
    TResult Function()? userHasNotSignedIn,
    required TResult orElse(),
  }) {
    if (userHasNotSignedIn != null) {
      return userHasNotSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DatabaseFailure value) $default, {
    required TResult Function(DatabaseFailureHasNoDrawing value) hasNoDrawing,
    required TResult Function(DatabaseFailureUserHasNotSignedIn value)
        userHasNotSignedIn,
  }) {
    return userHasNotSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
  }) {
    return userHasNotSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    required TResult orElse(),
  }) {
    if (userHasNotSignedIn != null) {
      return userHasNotSignedIn(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailureUserHasNotSignedIn implements DatabaseFailure {
  const factory DatabaseFailureUserHasNotSignedIn() =
      _$DatabaseFailureUserHasNotSignedIn;
}
