// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sp_drawing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SPDrawing {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SPDrawingCopyWith<SPDrawing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SPDrawingCopyWith<$Res> {
  factory $SPDrawingCopyWith(SPDrawing value, $Res Function(SPDrawing) then) =
      _$SPDrawingCopyWithImpl<$Res>;
  $Res call({int id, String name, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class _$SPDrawingCopyWithImpl<$Res> implements $SPDrawingCopyWith<$Res> {
  _$SPDrawingCopyWithImpl(this._value, this._then);

  final SPDrawing _value;
  // ignore: unused_field
  final $Res Function(SPDrawing) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_SPDrawingCopyWith<$Res> implements $SPDrawingCopyWith<$Res> {
  factory _$$_SPDrawingCopyWith(
          _$_SPDrawing value, $Res Function(_$_SPDrawing) then) =
      __$$_SPDrawingCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class __$$_SPDrawingCopyWithImpl<$Res> extends _$SPDrawingCopyWithImpl<$Res>
    implements _$$_SPDrawingCopyWith<$Res> {
  __$$_SPDrawingCopyWithImpl(
      _$_SPDrawing _value, $Res Function(_$_SPDrawing) _then)
      : super(_value, (v) => _then(v as _$_SPDrawing));

  @override
  _$_SPDrawing get _value => super._value as _$_SPDrawing;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_SPDrawing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_SPDrawing extends _SPDrawing {
  const _$_SPDrawing(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SPDrawing(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SPDrawing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_SPDrawingCopyWith<_$_SPDrawing> get copyWith =>
      __$$_SPDrawingCopyWithImpl<_$_SPDrawing>(this, _$identity);
}

abstract class _SPDrawing extends SPDrawing {
  const factory _SPDrawing(
      {required final int id,
      required final String name,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_SPDrawing;
  const _SPDrawing._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SPDrawingCopyWith<_$_SPDrawing> get copyWith =>
      throw _privateConstructorUsedError;
}
