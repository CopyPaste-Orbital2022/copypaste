// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pen_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PenEntity {
  int get currentColorIdx => throw _privateConstructorUsedError;
  List<Color> get colors => throw _privateConstructorUsedError;
  bool get useStylus => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PenEntityCopyWith<PenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenEntityCopyWith<$Res> {
  factory $PenEntityCopyWith(PenEntity value, $Res Function(PenEntity) then) =
      _$PenEntityCopyWithImpl<$Res>;
  $Res call(
      {int currentColorIdx, List<Color> colors, bool useStylus, double width});
}

/// @nodoc
class _$PenEntityCopyWithImpl<$Res> implements $PenEntityCopyWith<$Res> {
  _$PenEntityCopyWithImpl(this._value, this._then);

  final PenEntity _value;
  // ignore: unused_field
  final $Res Function(PenEntity) _then;

  @override
  $Res call({
    Object? currentColorIdx = freezed,
    Object? colors = freezed,
    Object? useStylus = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      currentColorIdx: currentColorIdx == freezed
          ? _value.currentColorIdx
          : currentColorIdx // ignore: cast_nullable_to_non_nullable
              as int,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      useStylus: useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
              as bool,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PenEntityCopyWith<$Res> implements $PenEntityCopyWith<$Res> {
  factory _$$_PenEntityCopyWith(
          _$_PenEntity value, $Res Function(_$_PenEntity) then) =
      __$$_PenEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentColorIdx, List<Color> colors, bool useStylus, double width});
}

/// @nodoc
class __$$_PenEntityCopyWithImpl<$Res> extends _$PenEntityCopyWithImpl<$Res>
    implements _$$_PenEntityCopyWith<$Res> {
  __$$_PenEntityCopyWithImpl(
      _$_PenEntity _value, $Res Function(_$_PenEntity) _then)
      : super(_value, (v) => _then(v as _$_PenEntity));

  @override
  _$_PenEntity get _value => super._value as _$_PenEntity;

  @override
  $Res call({
    Object? currentColorIdx = freezed,
    Object? colors = freezed,
    Object? useStylus = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_PenEntity(
      currentColorIdx: currentColorIdx == freezed
          ? _value.currentColorIdx
          : currentColorIdx // ignore: cast_nullable_to_non_nullable
              as int,
      colors: colors == freezed
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      useStylus: useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
              as bool,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PenEntity implements _PenEntity {
  const _$_PenEntity(
      {required this.currentColorIdx,
      required final List<Color> colors,
      required this.useStylus,
      required this.width})
      : _colors = colors;

  @override
  final int currentColorIdx;
  final List<Color> _colors;
  @override
  List<Color> get colors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  final bool useStylus;
  @override
  final double width;

  @override
  String toString() {
    return 'PenEntity(currentColorIdx: $currentColorIdx, colors: $colors, useStylus: $useStylus, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PenEntity &&
            const DeepCollectionEquality()
                .equals(other.currentColorIdx, currentColorIdx) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other.useStylus, useStylus) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentColorIdx),
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(useStylus),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$$_PenEntityCopyWith<_$_PenEntity> get copyWith =>
      __$$_PenEntityCopyWithImpl<_$_PenEntity>(this, _$identity);
}

abstract class _PenEntity implements PenEntity {
  const factory _PenEntity(
      {required final int currentColorIdx,
      required final List<Color> colors,
      required final bool useStylus,
      required final double width}) = _$_PenEntity;

  @override
  int get currentColorIdx => throw _privateConstructorUsedError;
  @override
  List<Color> get colors => throw _privateConstructorUsedError;
  @override
  bool get useStylus => throw _privateConstructorUsedError;
  @override
  double get width => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PenEntityCopyWith<_$_PenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
