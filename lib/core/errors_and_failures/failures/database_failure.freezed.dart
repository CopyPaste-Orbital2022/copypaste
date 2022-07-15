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
    TResult Function(String description) $default, {
    required TResult Function(String? description) hasNoDrawing,
    required TResult Function(String? description) userHasNotSignedIn,
    required TResult Function(String? description) jsonKeyNotFound,
    required TResult Function(String? description) insertionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DatabaseFailure value) $default, {
    required TResult Function(DatabaseFailureHasNoDrawing value) hasNoDrawing,
    required TResult Function(DatabaseFailureUserHasNotSignedIn value)
        userHasNotSignedIn,
    required TResult Function(DatabaseFailureJsonKeyNotFound value)
        jsonKeyNotFound,
    required TResult Function(DatabaseFailureInsertionFailure value)
        insertionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
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
  $Res call({String description});
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
    Object? description = freezed,
  }) {
    return _then(_$_DatabaseFailure(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DatabaseFailure implements _DatabaseFailure {
  const _$_DatabaseFailure(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'DatabaseFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatabaseFailure &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_DatabaseFailureCopyWith<_$_DatabaseFailure> get copyWith =>
      __$$_DatabaseFailureCopyWithImpl<_$_DatabaseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String description) $default, {
    required TResult Function(String? description) hasNoDrawing,
    required TResult Function(String? description) userHasNotSignedIn,
    required TResult Function(String? description) jsonKeyNotFound,
    required TResult Function(String? description) insertionFailure,
  }) {
    return $default(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
  }) {
    return $default?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(description);
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
    required TResult Function(DatabaseFailureJsonKeyNotFound value)
        jsonKeyNotFound,
    required TResult Function(DatabaseFailureInsertionFailure value)
        insertionFailure,
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
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
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
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _DatabaseFailure implements DatabaseFailure {
  const factory _DatabaseFailure(final String description) = _$_DatabaseFailure;

  String get description => throw _privateConstructorUsedError;
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
  $Res call({String? description});
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

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$DatabaseFailureHasNoDrawing(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DatabaseFailureHasNoDrawing implements DatabaseFailureHasNoDrawing {
  const _$DatabaseFailureHasNoDrawing({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'DatabaseFailure.hasNoDrawing(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureHasNoDrawing &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$DatabaseFailureHasNoDrawingCopyWith<_$DatabaseFailureHasNoDrawing>
      get copyWith => __$$DatabaseFailureHasNoDrawingCopyWithImpl<
          _$DatabaseFailureHasNoDrawing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String description) $default, {
    required TResult Function(String? description) hasNoDrawing,
    required TResult Function(String? description) userHasNotSignedIn,
    required TResult Function(String? description) jsonKeyNotFound,
    required TResult Function(String? description) insertionFailure,
  }) {
    return hasNoDrawing(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
  }) {
    return hasNoDrawing?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
    required TResult orElse(),
  }) {
    if (hasNoDrawing != null) {
      return hasNoDrawing(description);
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
    required TResult Function(DatabaseFailureJsonKeyNotFound value)
        jsonKeyNotFound,
    required TResult Function(DatabaseFailureInsertionFailure value)
        insertionFailure,
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
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
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
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
    required TResult orElse(),
  }) {
    if (hasNoDrawing != null) {
      return hasNoDrawing(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailureHasNoDrawing implements DatabaseFailure {
  const factory DatabaseFailureHasNoDrawing({final String? description}) =
      _$DatabaseFailureHasNoDrawing;

  String? get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DatabaseFailureHasNoDrawingCopyWith<_$DatabaseFailureHasNoDrawing>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseFailureUserHasNotSignedInCopyWith<$Res> {
  factory _$$DatabaseFailureUserHasNotSignedInCopyWith(
          _$DatabaseFailureUserHasNotSignedIn value,
          $Res Function(_$DatabaseFailureUserHasNotSignedIn) then) =
      __$$DatabaseFailureUserHasNotSignedInCopyWithImpl<$Res>;
  $Res call({String? description});
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

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$DatabaseFailureUserHasNotSignedIn(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DatabaseFailureUserHasNotSignedIn
    implements DatabaseFailureUserHasNotSignedIn {
  const _$DatabaseFailureUserHasNotSignedIn({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'DatabaseFailure.userHasNotSignedIn(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureUserHasNotSignedIn &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$DatabaseFailureUserHasNotSignedInCopyWith<
          _$DatabaseFailureUserHasNotSignedIn>
      get copyWith => __$$DatabaseFailureUserHasNotSignedInCopyWithImpl<
          _$DatabaseFailureUserHasNotSignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String description) $default, {
    required TResult Function(String? description) hasNoDrawing,
    required TResult Function(String? description) userHasNotSignedIn,
    required TResult Function(String? description) jsonKeyNotFound,
    required TResult Function(String? description) insertionFailure,
  }) {
    return userHasNotSignedIn(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
  }) {
    return userHasNotSignedIn?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
    required TResult orElse(),
  }) {
    if (userHasNotSignedIn != null) {
      return userHasNotSignedIn(description);
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
    required TResult Function(DatabaseFailureJsonKeyNotFound value)
        jsonKeyNotFound,
    required TResult Function(DatabaseFailureInsertionFailure value)
        insertionFailure,
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
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
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
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
    required TResult orElse(),
  }) {
    if (userHasNotSignedIn != null) {
      return userHasNotSignedIn(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailureUserHasNotSignedIn implements DatabaseFailure {
  const factory DatabaseFailureUserHasNotSignedIn({final String? description}) =
      _$DatabaseFailureUserHasNotSignedIn;

  String? get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DatabaseFailureUserHasNotSignedInCopyWith<
          _$DatabaseFailureUserHasNotSignedIn>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseFailureJsonKeyNotFoundCopyWith<$Res> {
  factory _$$DatabaseFailureJsonKeyNotFoundCopyWith(
          _$DatabaseFailureJsonKeyNotFound value,
          $Res Function(_$DatabaseFailureJsonKeyNotFound) then) =
      __$$DatabaseFailureJsonKeyNotFoundCopyWithImpl<$Res>;
  $Res call({String? description});
}

/// @nodoc
class __$$DatabaseFailureJsonKeyNotFoundCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$$DatabaseFailureJsonKeyNotFoundCopyWith<$Res> {
  __$$DatabaseFailureJsonKeyNotFoundCopyWithImpl(
      _$DatabaseFailureJsonKeyNotFound _value,
      $Res Function(_$DatabaseFailureJsonKeyNotFound) _then)
      : super(_value, (v) => _then(v as _$DatabaseFailureJsonKeyNotFound));

  @override
  _$DatabaseFailureJsonKeyNotFound get _value =>
      super._value as _$DatabaseFailureJsonKeyNotFound;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$DatabaseFailureJsonKeyNotFound(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DatabaseFailureJsonKeyNotFound
    implements DatabaseFailureJsonKeyNotFound {
  const _$DatabaseFailureJsonKeyNotFound({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'DatabaseFailure.jsonKeyNotFound(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureJsonKeyNotFound &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$DatabaseFailureJsonKeyNotFoundCopyWith<_$DatabaseFailureJsonKeyNotFound>
      get copyWith => __$$DatabaseFailureJsonKeyNotFoundCopyWithImpl<
          _$DatabaseFailureJsonKeyNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String description) $default, {
    required TResult Function(String? description) hasNoDrawing,
    required TResult Function(String? description) userHasNotSignedIn,
    required TResult Function(String? description) jsonKeyNotFound,
    required TResult Function(String? description) insertionFailure,
  }) {
    return jsonKeyNotFound(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
  }) {
    return jsonKeyNotFound?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
    required TResult orElse(),
  }) {
    if (jsonKeyNotFound != null) {
      return jsonKeyNotFound(description);
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
    required TResult Function(DatabaseFailureJsonKeyNotFound value)
        jsonKeyNotFound,
    required TResult Function(DatabaseFailureInsertionFailure value)
        insertionFailure,
  }) {
    return jsonKeyNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
  }) {
    return jsonKeyNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
    required TResult orElse(),
  }) {
    if (jsonKeyNotFound != null) {
      return jsonKeyNotFound(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailureJsonKeyNotFound implements DatabaseFailure {
  const factory DatabaseFailureJsonKeyNotFound({final String? description}) =
      _$DatabaseFailureJsonKeyNotFound;

  String? get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DatabaseFailureJsonKeyNotFoundCopyWith<_$DatabaseFailureJsonKeyNotFound>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseFailureInsertionFailureCopyWith<$Res> {
  factory _$$DatabaseFailureInsertionFailureCopyWith(
          _$DatabaseFailureInsertionFailure value,
          $Res Function(_$DatabaseFailureInsertionFailure) then) =
      __$$DatabaseFailureInsertionFailureCopyWithImpl<$Res>;
  $Res call({String? description});
}

/// @nodoc
class __$$DatabaseFailureInsertionFailureCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$$DatabaseFailureInsertionFailureCopyWith<$Res> {
  __$$DatabaseFailureInsertionFailureCopyWithImpl(
      _$DatabaseFailureInsertionFailure _value,
      $Res Function(_$DatabaseFailureInsertionFailure) _then)
      : super(_value, (v) => _then(v as _$DatabaseFailureInsertionFailure));

  @override
  _$DatabaseFailureInsertionFailure get _value =>
      super._value as _$DatabaseFailureInsertionFailure;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$DatabaseFailureInsertionFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DatabaseFailureInsertionFailure
    implements DatabaseFailureInsertionFailure {
  const _$DatabaseFailureInsertionFailure({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'DatabaseFailure.insertionFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureInsertionFailure &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$DatabaseFailureInsertionFailureCopyWith<_$DatabaseFailureInsertionFailure>
      get copyWith => __$$DatabaseFailureInsertionFailureCopyWithImpl<
          _$DatabaseFailureInsertionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String description) $default, {
    required TResult Function(String? description) hasNoDrawing,
    required TResult Function(String? description) userHasNotSignedIn,
    required TResult Function(String? description) jsonKeyNotFound,
    required TResult Function(String? description) insertionFailure,
  }) {
    return insertionFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
  }) {
    return insertionFailure?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String description)? $default, {
    TResult Function(String? description)? hasNoDrawing,
    TResult Function(String? description)? userHasNotSignedIn,
    TResult Function(String? description)? jsonKeyNotFound,
    TResult Function(String? description)? insertionFailure,
    required TResult orElse(),
  }) {
    if (insertionFailure != null) {
      return insertionFailure(description);
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
    required TResult Function(DatabaseFailureJsonKeyNotFound value)
        jsonKeyNotFound,
    required TResult Function(DatabaseFailureInsertionFailure value)
        insertionFailure,
  }) {
    return insertionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
  }) {
    return insertionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DatabaseFailure value)? $default, {
    TResult Function(DatabaseFailureHasNoDrawing value)? hasNoDrawing,
    TResult Function(DatabaseFailureUserHasNotSignedIn value)?
        userHasNotSignedIn,
    TResult Function(DatabaseFailureJsonKeyNotFound value)? jsonKeyNotFound,
    TResult Function(DatabaseFailureInsertionFailure value)? insertionFailure,
    required TResult orElse(),
  }) {
    if (insertionFailure != null) {
      return insertionFailure(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailureInsertionFailure implements DatabaseFailure {
  const factory DatabaseFailureInsertionFailure({final String? description}) =
      _$DatabaseFailureInsertionFailure;

  String? get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DatabaseFailureInsertionFailureCopyWith<_$DatabaseFailureInsertionFailure>
      get copyWith => throw _privateConstructorUsedError;
}
