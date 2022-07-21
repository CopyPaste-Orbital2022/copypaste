// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sp_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SPPoint {
  String get id => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  Offset get offset => throw _privateConstructorUsedError;
  double get pressure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SPPointCopyWith<SPPoint> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SPPointCopyWith<$Res> {
  factory $SPPointCopyWith(SPPoint value, $Res Function(SPPoint) then) =
      _$SPPointCopyWithImpl<$Res>;
  $Res call({String id, int index, Offset offset, double pressure});
}

/// @nodoc
class _$SPPointCopyWithImpl<$Res> implements $SPPointCopyWith<$Res> {
  _$SPPointCopyWithImpl(this._value, this._then);

  final SPPoint _value;
  // ignore: unused_field
  final $Res Function(SPPoint) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? offset = freezed,
    Object? pressure = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_SPPointCopyWith<$Res> implements $SPPointCopyWith<$Res> {
  factory _$$_SPPointCopyWith(
          _$_SPPoint value, $Res Function(_$_SPPoint) then) =
      __$$_SPPointCopyWithImpl<$Res>;
  @override
  $Res call({String id, int index, Offset offset, double pressure});
}

/// @nodoc
class __$$_SPPointCopyWithImpl<$Res> extends _$SPPointCopyWithImpl<$Res>
    implements _$$_SPPointCopyWith<$Res> {
  __$$_SPPointCopyWithImpl(_$_SPPoint _value, $Res Function(_$_SPPoint) _then)
      : super(_value, (v) => _then(v as _$_SPPoint));

  @override
  _$_SPPoint get _value => super._value as _$_SPPoint;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? offset = freezed,
    Object? pressure = freezed,
  }) {
    return _then(_$_SPPoint(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SPPoint implements _SPPoint {
  const _$_SPPoint(
      {required this.id,
      required this.index,
      required this.offset,
      required this.pressure});

  @override
  final String id;
  @override
  final int index;
  @override
  final Offset offset;
  @override
  final double pressure;

  @override
  String toString() {
    return 'SPPoint(id: $id, index: $index, offset: $offset, pressure: $pressure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SPPoint &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.pressure, pressure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(pressure));

  @JsonKey(ignore: true)
  @override
  _$$_SPPointCopyWith<_$_SPPoint> get copyWith =>
      __$$_SPPointCopyWithImpl<_$_SPPoint>(this, _$identity);
}

abstract class _SPPoint implements SPPoint {
  const factory _SPPoint(
      {required final String id,
      required final int index,
      required final Offset offset,
      required final double pressure}) = _$_SPPoint;

  @override
  String get id;
  @override
  int get index;
  @override
  Offset get offset;
  @override
  double get pressure;
  @override
  @JsonKey(ignore: true)
  _$$_SPPointCopyWith<_$_SPPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
