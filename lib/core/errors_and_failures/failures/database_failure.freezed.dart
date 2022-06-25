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
  String get failedReason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DatabaseFailureCopyWith<DatabaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseFailureCopyWith<$Res> {
  factory $DatabaseFailureCopyWith(
          DatabaseFailure value, $Res Function(DatabaseFailure) then) =
      _$DatabaseFailureCopyWithImpl<$Res>;
  $Res call({String failedReason});
}

/// @nodoc
class _$DatabaseFailureCopyWithImpl<$Res>
    implements $DatabaseFailureCopyWith<$Res> {
  _$DatabaseFailureCopyWithImpl(this._value, this._then);

  final DatabaseFailure _value;
  // ignore: unused_field
  final $Res Function(DatabaseFailure) _then;

  @override
  $Res call({
    Object? failedReason = freezed,
  }) {
    return _then(_value.copyWith(
      failedReason: failedReason == freezed
          ? _value.failedReason
          : failedReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DatabaseFailureCopyWith<$Res>
    implements $DatabaseFailureCopyWith<$Res> {
  factory _$$_DatabaseFailureCopyWith(
          _$_DatabaseFailure value, $Res Function(_$_DatabaseFailure) then) =
      __$$_DatabaseFailureCopyWithImpl<$Res>;
  @override
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
}

abstract class _DatabaseFailure implements DatabaseFailure {
  const factory _DatabaseFailure(final String failedReason) =
      _$_DatabaseFailure;

  @override
  String get failedReason => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DatabaseFailureCopyWith<_$_DatabaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
