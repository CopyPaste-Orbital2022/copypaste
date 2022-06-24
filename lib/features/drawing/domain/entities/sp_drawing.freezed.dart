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
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get modifiedAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SPDrawingCopyWith<SPDrawing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SPDrawingCopyWith<$Res> {
  factory $SPDrawingCopyWith(SPDrawing value, $Res Function(SPDrawing) then) =
      _$SPDrawingCopyWithImpl<$Res>;
  $Res call({String id, DateTime createdAt, DateTime modifiedAt, String title});
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
    Object? createdAt = freezed,
    Object? modifiedAt = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SPDrawingCopyWith<$Res> implements $SPDrawingCopyWith<$Res> {
  factory _$$_SPDrawingCopyWith(
          _$_SPDrawing value, $Res Function(_$_SPDrawing) then) =
      __$$_SPDrawingCopyWithImpl<$Res>;
  @override
  $Res call({String id, DateTime createdAt, DateTime modifiedAt, String title});
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
    Object? createdAt = freezed,
    Object? modifiedAt = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_SPDrawing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SPDrawing implements _SPDrawing {
  const _$_SPDrawing(
      {required this.id,
      required this.createdAt,
      required this.modifiedAt,
      required this.title});

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime modifiedAt;
  @override
  final String title;

  @override
  String toString() {
    return 'SPDrawing(id: $id, createdAt: $createdAt, modifiedAt: $modifiedAt, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SPDrawing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.modifiedAt, modifiedAt) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(modifiedAt),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_SPDrawingCopyWith<_$_SPDrawing> get copyWith =>
      __$$_SPDrawingCopyWithImpl<_$_SPDrawing>(this, _$identity);
}

abstract class _SPDrawing implements SPDrawing {
  const factory _SPDrawing(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime modifiedAt,
      required final String title}) = _$_SPDrawing;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get modifiedAt => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SPDrawingCopyWith<_$_SPDrawing> get copyWith =>
      throw _privateConstructorUsedError;
}
