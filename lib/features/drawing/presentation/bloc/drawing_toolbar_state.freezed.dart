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
mixin _$DrawingToolbarState {
  DrawingTool get currentTool => throw _privateConstructorUsedError;
  PenState get penState => throw _privateConstructorUsedError;
  EraserState get eraserState => throw _privateConstructorUsedError;
  ScribblePointerMode get allowedPointerMode =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawingToolbarStateCopyWith<DrawingToolbarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingToolbarStateCopyWith<$Res> {
  factory $DrawingToolbarStateCopyWith(
          DrawingToolbarState value, $Res Function(DrawingToolbarState) then) =
      _$DrawingToolbarStateCopyWithImpl<$Res>;
  $Res call(
      {DrawingTool currentTool,
      PenState penState,
      EraserState eraserState,
      ScribblePointerMode allowedPointerMode});

  $PenStateCopyWith<$Res> get penState;
  $EraserStateCopyWith<$Res> get eraserState;
}

/// @nodoc
class _$DrawingToolbarStateCopyWithImpl<$Res>
    implements $DrawingToolbarStateCopyWith<$Res> {
  _$DrawingToolbarStateCopyWithImpl(this._value, this._then);

  final DrawingToolbarState _value;
  // ignore: unused_field
  final $Res Function(DrawingToolbarState) _then;

  @override
  $Res call({
    Object? currentTool = freezed,
    Object? penState = freezed,
    Object? eraserState = freezed,
    Object? allowedPointerMode = freezed,
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
      allowedPointerMode: allowedPointerMode == freezed
          ? _value.allowedPointerMode
          : allowedPointerMode // ignore: cast_nullable_to_non_nullable
              as ScribblePointerMode,
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
abstract class _$$_DrawingToolbarStateCopyWith<$Res>
    implements $DrawingToolbarStateCopyWith<$Res> {
  factory _$$_DrawingToolbarStateCopyWith(_$_DrawingToolbarState value,
          $Res Function(_$_DrawingToolbarState) then) =
      __$$_DrawingToolbarStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DrawingTool currentTool,
      PenState penState,
      EraserState eraserState,
      ScribblePointerMode allowedPointerMode});

  @override
  $PenStateCopyWith<$Res> get penState;
  @override
  $EraserStateCopyWith<$Res> get eraserState;
}

/// @nodoc
class __$$_DrawingToolbarStateCopyWithImpl<$Res>
    extends _$DrawingToolbarStateCopyWithImpl<$Res>
    implements _$$_DrawingToolbarStateCopyWith<$Res> {
  __$$_DrawingToolbarStateCopyWithImpl(_$_DrawingToolbarState _value,
      $Res Function(_$_DrawingToolbarState) _then)
      : super(_value, (v) => _then(v as _$_DrawingToolbarState));

  @override
  _$_DrawingToolbarState get _value => super._value as _$_DrawingToolbarState;

  @override
  $Res call({
    Object? currentTool = freezed,
    Object? penState = freezed,
    Object? eraserState = freezed,
    Object? allowedPointerMode = freezed,
  }) {
    return _then(_$_DrawingToolbarState(
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
      allowedPointerMode: allowedPointerMode == freezed
          ? _value.allowedPointerMode
          : allowedPointerMode // ignore: cast_nullable_to_non_nullable
              as ScribblePointerMode,
    ));
  }
}

/// @nodoc

class _$_DrawingToolbarState implements _DrawingToolbarState {
  const _$_DrawingToolbarState(
      {required this.currentTool,
      required this.penState,
      required this.eraserState,
      required this.allowedPointerMode});

  @override
  final DrawingTool currentTool;
  @override
  final PenState penState;
  @override
  final EraserState eraserState;
  @override
  final ScribblePointerMode allowedPointerMode;

  @override
  String toString() {
    return 'DrawingToolbarState(currentTool: $currentTool, penState: $penState, eraserState: $eraserState, allowedPointerMode: $allowedPointerMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingToolbarState &&
            const DeepCollectionEquality()
                .equals(other.currentTool, currentTool) &&
            const DeepCollectionEquality().equals(other.penState, penState) &&
            const DeepCollectionEquality()
                .equals(other.eraserState, eraserState) &&
            const DeepCollectionEquality()
                .equals(other.allowedPointerMode, allowedPointerMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTool),
      const DeepCollectionEquality().hash(penState),
      const DeepCollectionEquality().hash(eraserState),
      const DeepCollectionEquality().hash(allowedPointerMode));

  @JsonKey(ignore: true)
  @override
  _$$_DrawingToolbarStateCopyWith<_$_DrawingToolbarState> get copyWith =>
      __$$_DrawingToolbarStateCopyWithImpl<_$_DrawingToolbarState>(
          this, _$identity);
}

abstract class _DrawingToolbarState implements DrawingToolbarState {
  const factory _DrawingToolbarState(
          {required final DrawingTool currentTool,
          required final PenState penState,
          required final EraserState eraserState,
          required final ScribblePointerMode allowedPointerMode}) =
      _$_DrawingToolbarState;

  @override
  DrawingTool get currentTool => throw _privateConstructorUsedError;
  @override
  PenState get penState => throw _privateConstructorUsedError;
  @override
  EraserState get eraserState => throw _privateConstructorUsedError;
  @override
  ScribblePointerMode get allowedPointerMode =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingToolbarStateCopyWith<_$_DrawingToolbarState> get copyWith =>
      throw _privateConstructorUsedError;
}
