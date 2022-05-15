// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'eraser_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EraserState {
  double get radius => throw _privateConstructorUsedError;
  bool get isPartial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EraserStateCopyWith<EraserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EraserStateCopyWith<$Res> {
  factory $EraserStateCopyWith(
          EraserState value, $Res Function(EraserState) then) =
      _$EraserStateCopyWithImpl<$Res>;
  $Res call({double radius, bool isPartial});
}

/// @nodoc
class _$EraserStateCopyWithImpl<$Res> implements $EraserStateCopyWith<$Res> {
  _$EraserStateCopyWithImpl(this._value, this._then);

  final EraserState _value;
  // ignore: unused_field
  final $Res Function(EraserState) _then;

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
abstract class _$$_EraserStateCopyWith<$Res>
    implements $EraserStateCopyWith<$Res> {
  factory _$$_EraserStateCopyWith(
          _$_EraserState value, $Res Function(_$_EraserState) then) =
      __$$_EraserStateCopyWithImpl<$Res>;
  @override
  $Res call({double radius, bool isPartial});
}

/// @nodoc
class __$$_EraserStateCopyWithImpl<$Res> extends _$EraserStateCopyWithImpl<$Res>
    implements _$$_EraserStateCopyWith<$Res> {
  __$$_EraserStateCopyWithImpl(
      _$_EraserState _value, $Res Function(_$_EraserState) _then)
      : super(_value, (v) => _then(v as _$_EraserState));

  @override
  _$_EraserState get _value => super._value as _$_EraserState;

  @override
  $Res call({
    Object? radius = freezed,
    Object? isPartial = freezed,
  }) {
    return _then(_$_EraserState(
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

class _$_EraserState implements _EraserState {
  const _$_EraserState({required this.radius, required this.isPartial});

  @override
  final double radius;
  @override
  final bool isPartial;

  @override
  String toString() {
    return 'EraserState(radius: $radius, isPartial: $isPartial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EraserState &&
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
  _$$_EraserStateCopyWith<_$_EraserState> get copyWith =>
      __$$_EraserStateCopyWithImpl<_$_EraserState>(this, _$identity);
}

abstract class _EraserState implements EraserState {
  const factory _EraserState(
      {required final double radius,
      required final bool isPartial}) = _$_EraserState;

  @override
  double get radius => throw _privateConstructorUsedError;
  @override
  bool get isPartial => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EraserStateCopyWith<_$_EraserState> get copyWith =>
      throw _privateConstructorUsedError;
}
