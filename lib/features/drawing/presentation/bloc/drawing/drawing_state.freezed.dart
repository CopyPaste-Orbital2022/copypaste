// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawingState {
  DrawingTool get currentTool => throw _privateConstructorUsedError;
  bool get usesStylus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawingStateCopyWith<DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingStateCopyWith<$Res> {
  factory $DrawingStateCopyWith(
          DrawingState value, $Res Function(DrawingState) then) =
      _$DrawingStateCopyWithImpl<$Res>;
  $Res call({DrawingTool currentTool, bool usesStylus});
}

/// @nodoc
class _$DrawingStateCopyWithImpl<$Res> implements $DrawingStateCopyWith<$Res> {
  _$DrawingStateCopyWithImpl(this._value, this._then);

  final DrawingState _value;
  // ignore: unused_field
  final $Res Function(DrawingState) _then;

  @override
  $Res call({
    Object? currentTool = freezed,
    Object? usesStylus = freezed,
  }) {
    return _then(_value.copyWith(
      currentTool: currentTool == freezed
          ? _value.currentTool
          : currentTool // ignore: cast_nullable_to_non_nullable
              as DrawingTool,
      usesStylus: usesStylus == freezed
          ? _value.usesStylus
          : usesStylus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_DrawingStateCopyWith<$Res>
    implements $DrawingStateCopyWith<$Res> {
  factory _$$_DrawingStateCopyWith(
          _$_DrawingState value, $Res Function(_$_DrawingState) then) =
      __$$_DrawingStateCopyWithImpl<$Res>;
  @override
  $Res call({DrawingTool currentTool, bool usesStylus});
}

/// @nodoc
class __$$_DrawingStateCopyWithImpl<$Res>
    extends _$DrawingStateCopyWithImpl<$Res>
    implements _$$_DrawingStateCopyWith<$Res> {
  __$$_DrawingStateCopyWithImpl(
      _$_DrawingState _value, $Res Function(_$_DrawingState) _then)
      : super(_value, (v) => _then(v as _$_DrawingState));

  @override
  _$_DrawingState get _value => super._value as _$_DrawingState;

  @override
  $Res call({
    Object? currentTool = freezed,
    Object? usesStylus = freezed,
  }) {
    return _then(_$_DrawingState(
      currentTool: currentTool == freezed
          ? _value.currentTool
          : currentTool // ignore: cast_nullable_to_non_nullable
              as DrawingTool,
      usesStylus: usesStylus == freezed
          ? _value.usesStylus
          : usesStylus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DrawingState implements _DrawingState {
  const _$_DrawingState({required this.currentTool, required this.usesStylus});

  @override
  final DrawingTool currentTool;
  @override
  final bool usesStylus;

  @override
  String toString() {
    return 'DrawingState(currentTool: $currentTool, usesStylus: $usesStylus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingState &&
            const DeepCollectionEquality()
                .equals(other.currentTool, currentTool) &&
            const DeepCollectionEquality()
                .equals(other.usesStylus, usesStylus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTool),
      const DeepCollectionEquality().hash(usesStylus));

  @JsonKey(ignore: true)
  @override
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      __$$_DrawingStateCopyWithImpl<_$_DrawingState>(this, _$identity);
}

abstract class _DrawingState implements DrawingState {
  const factory _DrawingState(
      {required final DrawingTool currentTool,
      required final bool usesStylus}) = _$_DrawingState;

  @override
  DrawingTool get currentTool => throw _privateConstructorUsedError;
  @override
  bool get usesStylus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}
