// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawing_toolbar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawingState {
  DrawingTool get currentTool => throw _privateConstructorUsedError;
  PenState get penState => throw _privateConstructorUsedError;
  EraserState get eraserState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawingStateCopyWith<DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingStateCopyWith<$Res> {
  factory $DrawingStateCopyWith(
          DrawingState value, $Res Function(DrawingState) then) =
      _$DrawingStateCopyWithImpl<$Res>;
  $Res call(
      {DrawingTool currentTool, PenState penState, EraserState eraserState});

  $PenStateCopyWith<$Res> get penState;
  $EraserStateCopyWith<$Res> get eraserState;
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
    Object? penState = freezed,
    Object? eraserState = freezed,
  }) {
    return _then(_value.copyWith(
      currentTool: currentTool == freezed
          ? _value.currentTool
          : currentTool // ignore: cast_nullable_to_non_nullable
              as DrawingTool,
      penState: penState == freezed
          ? _value.penState
          : penState // ignore: cast_nullable_to_non_nullable
              as PenState,
      eraserState: eraserState == freezed
          ? _value.eraserState
          : eraserState // ignore: cast_nullable_to_non_nullable
              as EraserState,
    ));
  }

  @override
  $PenStateCopyWith<$Res> get penState {
    return $PenStateCopyWith<$Res>(_value.penState, (value) {
      return _then(_value.copyWith(penState: value));
    });
  }

  @override
  $EraserStateCopyWith<$Res> get eraserState {
    return $EraserStateCopyWith<$Res>(_value.eraserState, (value) {
      return _then(_value.copyWith(eraserState: value));
    });
  }
}

/// @nodoc
abstract class _$$_DrawingStateCopyWith<$Res>
    implements $DrawingStateCopyWith<$Res> {
  factory _$$_DrawingStateCopyWith(
          _$_DrawingState value, $Res Function(_$_DrawingState) then) =
      __$$_DrawingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DrawingTool currentTool, PenState penState, EraserState eraserState});

  @override
  $PenStateCopyWith<$Res> get penState;
  @override
  $EraserStateCopyWith<$Res> get eraserState;
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
    Object? penState = freezed,
    Object? eraserState = freezed,
  }) {
    return _then(_$_DrawingState(
      currentTool: currentTool == freezed
          ? _value.currentTool
          : currentTool // ignore: cast_nullable_to_non_nullable
              as DrawingTool,
      penState: penState == freezed
          ? _value.penState
          : penState // ignore: cast_nullable_to_non_nullable
              as PenState,
      eraserState: eraserState == freezed
          ? _value.eraserState
          : eraserState // ignore: cast_nullable_to_non_nullable
              as EraserState,
    ));
  }
}

/// @nodoc

class _$_DrawingState implements _DrawingState {
  const _$_DrawingState(
      {required this.currentTool,
      required this.penState,
      required this.eraserState});

  @override
  final DrawingTool currentTool;
  @override
  final PenState penState;
  @override
  final EraserState eraserState;

  @override
  String toString() {
    return 'DrawingState(currentTool: $currentTool, penState: $penState, eraserState: $eraserState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingState &&
            const DeepCollectionEquality()
                .equals(other.currentTool, currentTool) &&
            const DeepCollectionEquality().equals(other.penState, penState) &&
            const DeepCollectionEquality()
                .equals(other.eraserState, eraserState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTool),
      const DeepCollectionEquality().hash(penState),
      const DeepCollectionEquality().hash(eraserState));

  @JsonKey(ignore: true)
  @override
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      __$$_DrawingStateCopyWithImpl<_$_DrawingState>(this, _$identity);
}

abstract class _DrawingState implements DrawingState {
  const factory _DrawingState(
      {required final DrawingTool currentTool,
      required final PenState penState,
      required final EraserState eraserState}) = _$_DrawingState;

  @override
  DrawingTool get currentTool => throw _privateConstructorUsedError;
  @override
  PenState get penState => throw _privateConstructorUsedError;
  @override
  EraserState get eraserState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}
