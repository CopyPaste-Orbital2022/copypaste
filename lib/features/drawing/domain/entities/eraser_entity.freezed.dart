// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'eraser_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EraserEntity {
  double get radius => throw _privateConstructorUsedError;
  bool get isPartial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EraserEntityCopyWith<EraserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EraserEntityCopyWith<$Res> {
  factory $EraserEntityCopyWith(
          EraserEntity value, $Res Function(EraserEntity) then) =
      _$EraserEntityCopyWithImpl<$Res>;
  $Res call({double radius, bool isPartial});
}

/// @nodoc
class _$EraserEntityCopyWithImpl<$Res> implements $EraserEntityCopyWith<$Res> {
  _$EraserEntityCopyWithImpl(this._value, this._then);

  final EraserEntity _value;
  // ignore: unused_field
  final $Res Function(EraserEntity) _then;

  @override
  $Res call({
    Object? radius = freezed,
    Object? isPartial = freezed,
  }) {
    return _then(_value.copyWith(
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      isPartial: isPartial == freezed
          ? _value.isPartial
          : isPartial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_EraserEntityCopyWith<$Res>
    implements $EraserEntityCopyWith<$Res> {
  factory _$$_EraserEntityCopyWith(
          _$_EraserEntity value, $Res Function(_$_EraserEntity) then) =
      __$$_EraserEntityCopyWithImpl<$Res>;
  @override
  $Res call({double radius, bool isPartial});
}

/// @nodoc
class __$$_EraserEntityCopyWithImpl<$Res>
    extends _$EraserEntityCopyWithImpl<$Res>
    implements _$$_EraserEntityCopyWith<$Res> {
  __$$_EraserEntityCopyWithImpl(
      _$_EraserEntity _value, $Res Function(_$_EraserEntity) _then)
      : super(_value, (v) => _then(v as _$_EraserEntity));

  @override
  _$_EraserEntity get _value => super._value as _$_EraserEntity;

  @override
  $Res call({
    Object? radius = freezed,
    Object? isPartial = freezed,
  }) {
    return _then(_$_EraserEntity(
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      isPartial: isPartial == freezed
          ? _value.isPartial
          : isPartial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EraserEntity implements _EraserEntity {
  const _$_EraserEntity({required this.radius, required this.isPartial});

  @override
  final double radius;
  @override
  final bool isPartial;

  @override
  String toString() {
    return 'EraserEntity(radius: $radius, isPartial: $isPartial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EraserEntity &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality().equals(other.isPartial, isPartial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(isPartial));

  @JsonKey(ignore: true)
  @override
  _$$_EraserEntityCopyWith<_$_EraserEntity> get copyWith =>
      __$$_EraserEntityCopyWithImpl<_$_EraserEntity>(this, _$identity);
}

abstract class _EraserEntity implements EraserEntity {
  const factory _EraserEntity(
      {required final double radius,
      required final bool isPartial}) = _$_EraserEntity;

  @override
  double get radius => throw _privateConstructorUsedError;
  @override
  bool get isPartial => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EraserEntityCopyWith<_$_EraserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
