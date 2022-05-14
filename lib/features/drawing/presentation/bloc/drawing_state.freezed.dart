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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(PenEntity pen) penState,
    required TResult Function(bool isPartial, bool width) eraserState,
    required TResult Function() panState,
    required TResult Function() pictureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingInitialState value) initialState,
    required TResult Function(DrawingPenState value) penState,
    required TResult Function(DrawingEraserState value) eraserState,
    required TResult Function(DrawingPanState value) panState,
    required TResult Function(DrawingPictureState value) pictureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingStateCopyWith<$Res> {
  factory $DrawingStateCopyWith(
          DrawingState value, $Res Function(DrawingState) then) =
      _$DrawingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DrawingStateCopyWithImpl<$Res> implements $DrawingStateCopyWith<$Res> {
  _$DrawingStateCopyWithImpl(this._value, this._then);

  final DrawingState _value;
  // ignore: unused_field
  final $Res Function(DrawingState) _then;
}

/// @nodoc
abstract class _$$DrawingInitialStateCopyWith<$Res> {
  factory _$$DrawingInitialStateCopyWith(_$DrawingInitialState value,
          $Res Function(_$DrawingInitialState) then) =
      __$$DrawingInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DrawingInitialStateCopyWithImpl<$Res>
    extends _$DrawingStateCopyWithImpl<$Res>
    implements _$$DrawingInitialStateCopyWith<$Res> {
  __$$DrawingInitialStateCopyWithImpl(
      _$DrawingInitialState _value, $Res Function(_$DrawingInitialState) _then)
      : super(_value, (v) => _then(v as _$DrawingInitialState));

  @override
  _$DrawingInitialState get _value => super._value as _$DrawingInitialState;
}

/// @nodoc

class _$DrawingInitialState implements DrawingInitialState {
  const _$DrawingInitialState();

  @override
  String toString() {
    return 'DrawingState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DrawingInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(PenEntity pen) penState,
    required TResult Function(bool isPartial, bool width) eraserState,
    required TResult Function() panState,
    required TResult Function() pictureState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingInitialState value) initialState,
    required TResult Function(DrawingPenState value) penState,
    required TResult Function(DrawingEraserState value) eraserState,
    required TResult Function(DrawingPanState value) panState,
    required TResult Function(DrawingPictureState value) pictureState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class DrawingInitialState implements DrawingState {
  const factory DrawingInitialState() = _$DrawingInitialState;
}

/// @nodoc
abstract class _$$DrawingPenStateCopyWith<$Res> {
  factory _$$DrawingPenStateCopyWith(
          _$DrawingPenState value, $Res Function(_$DrawingPenState) then) =
      __$$DrawingPenStateCopyWithImpl<$Res>;
  $Res call({PenEntity pen});

  $PenEntityCopyWith<$Res> get pen;
}

/// @nodoc
class __$$DrawingPenStateCopyWithImpl<$Res>
    extends _$DrawingStateCopyWithImpl<$Res>
    implements _$$DrawingPenStateCopyWith<$Res> {
  __$$DrawingPenStateCopyWithImpl(
      _$DrawingPenState _value, $Res Function(_$DrawingPenState) _then)
      : super(_value, (v) => _then(v as _$DrawingPenState));

  @override
  _$DrawingPenState get _value => super._value as _$DrawingPenState;

  @override
  $Res call({
    Object? pen = freezed,
  }) {
    return _then(_$DrawingPenState(
      pen: pen == freezed
          ? _value.pen
          : pen // ignore: cast_nullable_to_non_nullable
              as PenEntity,
    ));
  }

  @override
  $PenEntityCopyWith<$Res> get pen {
    return $PenEntityCopyWith<$Res>(_value.pen, (value) {
      return _then(_value.copyWith(pen: value));
    });
  }
}

/// @nodoc

class _$DrawingPenState implements DrawingPenState {
  const _$DrawingPenState({required this.pen});

  @override
  final PenEntity pen;

  @override
  String toString() {
    return 'DrawingState.penState(pen: $pen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingPenState &&
            const DeepCollectionEquality().equals(other.pen, pen));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pen));

  @JsonKey(ignore: true)
  @override
  _$$DrawingPenStateCopyWith<_$DrawingPenState> get copyWith =>
      __$$DrawingPenStateCopyWithImpl<_$DrawingPenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(PenEntity pen) penState,
    required TResult Function(bool isPartial, bool width) eraserState,
    required TResult Function() panState,
    required TResult Function() pictureState,
  }) {
    return penState(pen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
  }) {
    return penState?.call(pen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
    required TResult orElse(),
  }) {
    if (penState != null) {
      return penState(pen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingInitialState value) initialState,
    required TResult Function(DrawingPenState value) penState,
    required TResult Function(DrawingEraserState value) eraserState,
    required TResult Function(DrawingPanState value) panState,
    required TResult Function(DrawingPictureState value) pictureState,
  }) {
    return penState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
  }) {
    return penState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
    required TResult orElse(),
  }) {
    if (penState != null) {
      return penState(this);
    }
    return orElse();
  }
}

abstract class DrawingPenState implements DrawingState {
  const factory DrawingPenState({required final PenEntity pen}) =
      _$DrawingPenState;

  PenEntity get pen => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DrawingPenStateCopyWith<_$DrawingPenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawingEraserStateCopyWith<$Res> {
  factory _$$DrawingEraserStateCopyWith(_$DrawingEraserState value,
          $Res Function(_$DrawingEraserState) then) =
      __$$DrawingEraserStateCopyWithImpl<$Res>;
  $Res call({bool isPartial, bool width});
}

/// @nodoc
class __$$DrawingEraserStateCopyWithImpl<$Res>
    extends _$DrawingStateCopyWithImpl<$Res>
    implements _$$DrawingEraserStateCopyWith<$Res> {
  __$$DrawingEraserStateCopyWithImpl(
      _$DrawingEraserState _value, $Res Function(_$DrawingEraserState) _then)
      : super(_value, (v) => _then(v as _$DrawingEraserState));

  @override
  _$DrawingEraserState get _value => super._value as _$DrawingEraserState;

  @override
  $Res call({
    Object? isPartial = freezed,
    Object? width = freezed,
  }) {
    return _then(_$DrawingEraserState(
      isPartial: isPartial == freezed
          ? _value.isPartial
          : isPartial // ignore: cast_nullable_to_non_nullable
              as bool,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DrawingEraserState implements DrawingEraserState {
  const _$DrawingEraserState({required this.isPartial, required this.width});

  @override
  final bool isPartial;
  @override
  final bool width;

  @override
  String toString() {
    return 'DrawingState.eraserState(isPartial: $isPartial, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingEraserState &&
            const DeepCollectionEquality().equals(other.isPartial, isPartial) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isPartial),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$$DrawingEraserStateCopyWith<_$DrawingEraserState> get copyWith =>
      __$$DrawingEraserStateCopyWithImpl<_$DrawingEraserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(PenEntity pen) penState,
    required TResult Function(bool isPartial, bool width) eraserState,
    required TResult Function() panState,
    required TResult Function() pictureState,
  }) {
    return eraserState(isPartial, width);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
  }) {
    return eraserState?.call(isPartial, width);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
    required TResult orElse(),
  }) {
    if (eraserState != null) {
      return eraserState(isPartial, width);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingInitialState value) initialState,
    required TResult Function(DrawingPenState value) penState,
    required TResult Function(DrawingEraserState value) eraserState,
    required TResult Function(DrawingPanState value) panState,
    required TResult Function(DrawingPictureState value) pictureState,
  }) {
    return eraserState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
  }) {
    return eraserState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
    required TResult orElse(),
  }) {
    if (eraserState != null) {
      return eraserState(this);
    }
    return orElse();
  }
}

abstract class DrawingEraserState implements DrawingState {
  const factory DrawingEraserState(
      {required final bool isPartial,
      required final bool width}) = _$DrawingEraserState;

  bool get isPartial => throw _privateConstructorUsedError;
  bool get width => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DrawingEraserStateCopyWith<_$DrawingEraserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawingPanStateCopyWith<$Res> {
  factory _$$DrawingPanStateCopyWith(
          _$DrawingPanState value, $Res Function(_$DrawingPanState) then) =
      __$$DrawingPanStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DrawingPanStateCopyWithImpl<$Res>
    extends _$DrawingStateCopyWithImpl<$Res>
    implements _$$DrawingPanStateCopyWith<$Res> {
  __$$DrawingPanStateCopyWithImpl(
      _$DrawingPanState _value, $Res Function(_$DrawingPanState) _then)
      : super(_value, (v) => _then(v as _$DrawingPanState));

  @override
  _$DrawingPanState get _value => super._value as _$DrawingPanState;
}

/// @nodoc

class _$DrawingPanState implements DrawingPanState {
  const _$DrawingPanState();

  @override
  String toString() {
    return 'DrawingState.panState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DrawingPanState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(PenEntity pen) penState,
    required TResult Function(bool isPartial, bool width) eraserState,
    required TResult Function() panState,
    required TResult Function() pictureState,
  }) {
    return panState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
  }) {
    return panState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
    required TResult orElse(),
  }) {
    if (panState != null) {
      return panState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingInitialState value) initialState,
    required TResult Function(DrawingPenState value) penState,
    required TResult Function(DrawingEraserState value) eraserState,
    required TResult Function(DrawingPanState value) panState,
    required TResult Function(DrawingPictureState value) pictureState,
  }) {
    return panState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
  }) {
    return panState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
    required TResult orElse(),
  }) {
    if (panState != null) {
      return panState(this);
    }
    return orElse();
  }
}

abstract class DrawingPanState implements DrawingState {
  const factory DrawingPanState() = _$DrawingPanState;
}

/// @nodoc
abstract class _$$DrawingPictureStateCopyWith<$Res> {
  factory _$$DrawingPictureStateCopyWith(_$DrawingPictureState value,
          $Res Function(_$DrawingPictureState) then) =
      __$$DrawingPictureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DrawingPictureStateCopyWithImpl<$Res>
    extends _$DrawingStateCopyWithImpl<$Res>
    implements _$$DrawingPictureStateCopyWith<$Res> {
  __$$DrawingPictureStateCopyWithImpl(
      _$DrawingPictureState _value, $Res Function(_$DrawingPictureState) _then)
      : super(_value, (v) => _then(v as _$DrawingPictureState));

  @override
  _$DrawingPictureState get _value => super._value as _$DrawingPictureState;
}

/// @nodoc

class _$DrawingPictureState implements DrawingPictureState {
  const _$DrawingPictureState();

  @override
  String toString() {
    return 'DrawingState.pictureState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DrawingPictureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(PenEntity pen) penState,
    required TResult Function(bool isPartial, bool width) eraserState,
    required TResult Function() panState,
    required TResult Function() pictureState,
  }) {
    return pictureState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
  }) {
    return pictureState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(PenEntity pen)? penState,
    TResult Function(bool isPartial, bool width)? eraserState,
    TResult Function()? panState,
    TResult Function()? pictureState,
    required TResult orElse(),
  }) {
    if (pictureState != null) {
      return pictureState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingInitialState value) initialState,
    required TResult Function(DrawingPenState value) penState,
    required TResult Function(DrawingEraserState value) eraserState,
    required TResult Function(DrawingPanState value) panState,
    required TResult Function(DrawingPictureState value) pictureState,
  }) {
    return pictureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
  }) {
    return pictureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingInitialState value)? initialState,
    TResult Function(DrawingPenState value)? penState,
    TResult Function(DrawingEraserState value)? eraserState,
    TResult Function(DrawingPanState value)? panState,
    TResult Function(DrawingPictureState value)? pictureState,
    required TResult orElse(),
  }) {
    if (pictureState != null) {
      return pictureState(this);
    }
    return orElse();
  }
}

abstract class DrawingPictureState implements DrawingState {
  const factory DrawingPictureState() = _$DrawingPictureState;
}
