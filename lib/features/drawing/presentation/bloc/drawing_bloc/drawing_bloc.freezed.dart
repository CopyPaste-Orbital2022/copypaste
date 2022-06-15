// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawingState {
  List<SPStroke> get strokes => throw _privateConstructorUsedError;
  SPStroke? get currentStroke => throw _privateConstructorUsedError;
  bool get useStylus => throw _privateConstructorUsedError;
  Offset? get eraserPosition => throw _privateConstructorUsedError;

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
      {List<SPStroke> strokes,
      SPStroke? currentStroke,
      bool useStylus,
      Offset? eraserPosition});

  $SPStrokeCopyWith<$Res>? get currentStroke;
}

/// @nodoc
class _$DrawingStateCopyWithImpl<$Res> implements $DrawingStateCopyWith<$Res> {
  _$DrawingStateCopyWithImpl(this._value, this._then);

  final DrawingState _value;
  // ignore: unused_field
  final $Res Function(DrawingState) _then;

  @override
  $Res call({
    Object? strokes = freezed,
    Object? currentStroke = freezed,
    Object? useStylus = freezed,
    Object? eraserPosition = freezed,
  }) {
    return _then(_value.copyWith(
      strokes: strokes == freezed
          ? _value.strokes
          : strokes // ignore: cast_nullable_to_non_nullable
              as List<SPStroke>,
      currentStroke: currentStroke == freezed
          ? _value.currentStroke
          : currentStroke // ignore: cast_nullable_to_non_nullable
              as SPStroke?,
      useStylus: useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
              as bool,
      eraserPosition: eraserPosition == freezed
          ? _value.eraserPosition
          : eraserPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ));
  }

  @override
  $SPStrokeCopyWith<$Res>? get currentStroke {
    if (_value.currentStroke == null) {
      return null;
    }

    return $SPStrokeCopyWith<$Res>(_value.currentStroke!, (value) {
      return _then(_value.copyWith(currentStroke: value));
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
      {List<SPStroke> strokes,
      SPStroke? currentStroke,
      bool useStylus,
      Offset? eraserPosition});

  @override
  $SPStrokeCopyWith<$Res>? get currentStroke;
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
    Object? strokes = freezed,
    Object? currentStroke = freezed,
    Object? useStylus = freezed,
    Object? eraserPosition = freezed,
  }) {
    return _then(_$_DrawingState(
      strokes: strokes == freezed
          ? _value._strokes
          : strokes // ignore: cast_nullable_to_non_nullable
              as List<SPStroke>,
      currentStroke: currentStroke == freezed
          ? _value.currentStroke
          : currentStroke // ignore: cast_nullable_to_non_nullable
              as SPStroke?,
      useStylus: useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
              as bool,
      eraserPosition: eraserPosition == freezed
          ? _value.eraserPosition
          : eraserPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ));
  }
}

/// @nodoc

class _$_DrawingState implements _DrawingState {
  const _$_DrawingState(
      {final List<SPStroke> strokes = const [],
      this.currentStroke,
      this.useStylus = false,
      this.eraserPosition})
      : _strokes = strokes;

  final List<SPStroke> _strokes;
  @override
  @JsonKey()
  List<SPStroke> get strokes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strokes);
  }

  @override
  final SPStroke? currentStroke;
  @override
  @JsonKey()
  final bool useStylus;
  @override
  final Offset? eraserPosition;

  @override
  String toString() {
    return 'DrawingState(strokes: $strokes, currentStroke: $currentStroke, useStylus: $useStylus, eraserPosition: $eraserPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingState &&
            const DeepCollectionEquality().equals(other._strokes, _strokes) &&
            const DeepCollectionEquality()
                .equals(other.currentStroke, currentStroke) &&
            const DeepCollectionEquality().equals(other.useStylus, useStylus) &&
            const DeepCollectionEquality()
                .equals(other.eraserPosition, eraserPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_strokes),
      const DeepCollectionEquality().hash(currentStroke),
      const DeepCollectionEquality().hash(useStylus),
      const DeepCollectionEquality().hash(eraserPosition));

  @JsonKey(ignore: true)
  @override
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      __$$_DrawingStateCopyWithImpl<_$_DrawingState>(this, _$identity);
}

abstract class _DrawingState implements DrawingState {
  const factory _DrawingState(
      {final List<SPStroke> strokes,
      final SPStroke? currentStroke,
      final bool useStylus,
      final Offset? eraserPosition}) = _$_DrawingState;

  @override
  List<SPStroke> get strokes => throw _privateConstructorUsedError;
  @override
  SPStroke? get currentStroke => throw _privateConstructorUsedError;
  @override
  bool get useStylus => throw _privateConstructorUsedError;
  @override
  Offset? get eraserPosition => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PointerDownEvent event) pointerDown,
    required TResult Function(PointerMoveEvent event) pointerMove,
    required TResult Function(PointerUpEvent event) pointerUp,
    required TResult Function(PointerCancelEvent event) pointerCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingEventPointerDown value) pointerDown,
    required TResult Function(DrawingEventPointerMove value) pointerMove,
    required TResult Function(DrawingEventPointerUp value) pointerUp,
    required TResult Function(DrawingEventPointerCancel value) pointerCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingEventCopyWith<$Res> {
  factory $DrawingEventCopyWith(
          DrawingEvent value, $Res Function(DrawingEvent) then) =
      _$DrawingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DrawingEventCopyWithImpl<$Res> implements $DrawingEventCopyWith<$Res> {
  _$DrawingEventCopyWithImpl(this._value, this._then);

  final DrawingEvent _value;
  // ignore: unused_field
  final $Res Function(DrawingEvent) _then;
}

/// @nodoc
abstract class _$$DrawingEventPointerDownCopyWith<$Res> {
  factory _$$DrawingEventPointerDownCopyWith(_$DrawingEventPointerDown value,
          $Res Function(_$DrawingEventPointerDown) then) =
      __$$DrawingEventPointerDownCopyWithImpl<$Res>;
  $Res call({PointerDownEvent event});
}

/// @nodoc
class __$$DrawingEventPointerDownCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$DrawingEventPointerDownCopyWith<$Res> {
  __$$DrawingEventPointerDownCopyWithImpl(_$DrawingEventPointerDown _value,
      $Res Function(_$DrawingEventPointerDown) _then)
      : super(_value, (v) => _then(v as _$DrawingEventPointerDown));

  @override
  _$DrawingEventPointerDown get _value =>
      super._value as _$DrawingEventPointerDown;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$DrawingEventPointerDown(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as PointerDownEvent,
    ));
  }
}

/// @nodoc

class _$DrawingEventPointerDown implements DrawingEventPointerDown {
  const _$DrawingEventPointerDown(this.event);

  @override
  final PointerDownEvent event;

  @override
  String toString() {
    return 'DrawingEvent.pointerDown(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingEventPointerDown &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$DrawingEventPointerDownCopyWith<_$DrawingEventPointerDown> get copyWith =>
      __$$DrawingEventPointerDownCopyWithImpl<_$DrawingEventPointerDown>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PointerDownEvent event) pointerDown,
    required TResult Function(PointerMoveEvent event) pointerMove,
    required TResult Function(PointerUpEvent event) pointerUp,
    required TResult Function(PointerCancelEvent event) pointerCancel,
  }) {
    return pointerDown(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
  }) {
    return pointerDown?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
    required TResult orElse(),
  }) {
    if (pointerDown != null) {
      return pointerDown(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingEventPointerDown value) pointerDown,
    required TResult Function(DrawingEventPointerMove value) pointerMove,
    required TResult Function(DrawingEventPointerUp value) pointerUp,
    required TResult Function(DrawingEventPointerCancel value) pointerCancel,
  }) {
    return pointerDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
  }) {
    return pointerDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
    required TResult orElse(),
  }) {
    if (pointerDown != null) {
      return pointerDown(this);
    }
    return orElse();
  }
}

abstract class DrawingEventPointerDown implements DrawingEvent {
  const factory DrawingEventPointerDown(final PointerDownEvent event) =
      _$DrawingEventPointerDown;

  PointerDownEvent get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DrawingEventPointerDownCopyWith<_$DrawingEventPointerDown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawingEventPointerMoveCopyWith<$Res> {
  factory _$$DrawingEventPointerMoveCopyWith(_$DrawingEventPointerMove value,
          $Res Function(_$DrawingEventPointerMove) then) =
      __$$DrawingEventPointerMoveCopyWithImpl<$Res>;
  $Res call({PointerMoveEvent event});
}

/// @nodoc
class __$$DrawingEventPointerMoveCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$DrawingEventPointerMoveCopyWith<$Res> {
  __$$DrawingEventPointerMoveCopyWithImpl(_$DrawingEventPointerMove _value,
      $Res Function(_$DrawingEventPointerMove) _then)
      : super(_value, (v) => _then(v as _$DrawingEventPointerMove));

  @override
  _$DrawingEventPointerMove get _value =>
      super._value as _$DrawingEventPointerMove;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$DrawingEventPointerMove(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as PointerMoveEvent,
    ));
  }
}

/// @nodoc

class _$DrawingEventPointerMove implements DrawingEventPointerMove {
  const _$DrawingEventPointerMove(this.event);

  @override
  final PointerMoveEvent event;

  @override
  String toString() {
    return 'DrawingEvent.pointerMove(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingEventPointerMove &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$DrawingEventPointerMoveCopyWith<_$DrawingEventPointerMove> get copyWith =>
      __$$DrawingEventPointerMoveCopyWithImpl<_$DrawingEventPointerMove>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PointerDownEvent event) pointerDown,
    required TResult Function(PointerMoveEvent event) pointerMove,
    required TResult Function(PointerUpEvent event) pointerUp,
    required TResult Function(PointerCancelEvent event) pointerCancel,
  }) {
    return pointerMove(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
  }) {
    return pointerMove?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
    required TResult orElse(),
  }) {
    if (pointerMove != null) {
      return pointerMove(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingEventPointerDown value) pointerDown,
    required TResult Function(DrawingEventPointerMove value) pointerMove,
    required TResult Function(DrawingEventPointerUp value) pointerUp,
    required TResult Function(DrawingEventPointerCancel value) pointerCancel,
  }) {
    return pointerMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
  }) {
    return pointerMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
    required TResult orElse(),
  }) {
    if (pointerMove != null) {
      return pointerMove(this);
    }
    return orElse();
  }
}

abstract class DrawingEventPointerMove implements DrawingEvent {
  const factory DrawingEventPointerMove(final PointerMoveEvent event) =
      _$DrawingEventPointerMove;

  PointerMoveEvent get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DrawingEventPointerMoveCopyWith<_$DrawingEventPointerMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawingEventPointerUpCopyWith<$Res> {
  factory _$$DrawingEventPointerUpCopyWith(_$DrawingEventPointerUp value,
          $Res Function(_$DrawingEventPointerUp) then) =
      __$$DrawingEventPointerUpCopyWithImpl<$Res>;
  $Res call({PointerUpEvent event});
}

/// @nodoc
class __$$DrawingEventPointerUpCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$DrawingEventPointerUpCopyWith<$Res> {
  __$$DrawingEventPointerUpCopyWithImpl(_$DrawingEventPointerUp _value,
      $Res Function(_$DrawingEventPointerUp) _then)
      : super(_value, (v) => _then(v as _$DrawingEventPointerUp));

  @override
  _$DrawingEventPointerUp get _value => super._value as _$DrawingEventPointerUp;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$DrawingEventPointerUp(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as PointerUpEvent,
    ));
  }
}

/// @nodoc

class _$DrawingEventPointerUp implements DrawingEventPointerUp {
  const _$DrawingEventPointerUp(this.event);

  @override
  final PointerUpEvent event;

  @override
  String toString() {
    return 'DrawingEvent.pointerUp(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingEventPointerUp &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$DrawingEventPointerUpCopyWith<_$DrawingEventPointerUp> get copyWith =>
      __$$DrawingEventPointerUpCopyWithImpl<_$DrawingEventPointerUp>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PointerDownEvent event) pointerDown,
    required TResult Function(PointerMoveEvent event) pointerMove,
    required TResult Function(PointerUpEvent event) pointerUp,
    required TResult Function(PointerCancelEvent event) pointerCancel,
  }) {
    return pointerUp(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
  }) {
    return pointerUp?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
    required TResult orElse(),
  }) {
    if (pointerUp != null) {
      return pointerUp(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingEventPointerDown value) pointerDown,
    required TResult Function(DrawingEventPointerMove value) pointerMove,
    required TResult Function(DrawingEventPointerUp value) pointerUp,
    required TResult Function(DrawingEventPointerCancel value) pointerCancel,
  }) {
    return pointerUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
  }) {
    return pointerUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
    required TResult orElse(),
  }) {
    if (pointerUp != null) {
      return pointerUp(this);
    }
    return orElse();
  }
}

abstract class DrawingEventPointerUp implements DrawingEvent {
  const factory DrawingEventPointerUp(final PointerUpEvent event) =
      _$DrawingEventPointerUp;

  PointerUpEvent get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DrawingEventPointerUpCopyWith<_$DrawingEventPointerUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawingEventPointerCancelCopyWith<$Res> {
  factory _$$DrawingEventPointerCancelCopyWith(
          _$DrawingEventPointerCancel value,
          $Res Function(_$DrawingEventPointerCancel) then) =
      __$$DrawingEventPointerCancelCopyWithImpl<$Res>;
  $Res call({PointerCancelEvent event});
}

/// @nodoc
class __$$DrawingEventPointerCancelCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$DrawingEventPointerCancelCopyWith<$Res> {
  __$$DrawingEventPointerCancelCopyWithImpl(_$DrawingEventPointerCancel _value,
      $Res Function(_$DrawingEventPointerCancel) _then)
      : super(_value, (v) => _then(v as _$DrawingEventPointerCancel));

  @override
  _$DrawingEventPointerCancel get _value =>
      super._value as _$DrawingEventPointerCancel;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$DrawingEventPointerCancel(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as PointerCancelEvent,
    ));
  }
}

/// @nodoc

class _$DrawingEventPointerCancel implements DrawingEventPointerCancel {
  const _$DrawingEventPointerCancel(this.event);

  @override
  final PointerCancelEvent event;

  @override
  String toString() {
    return 'DrawingEvent.pointerCancel(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingEventPointerCancel &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$DrawingEventPointerCancelCopyWith<_$DrawingEventPointerCancel>
      get copyWith => __$$DrawingEventPointerCancelCopyWithImpl<
          _$DrawingEventPointerCancel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PointerDownEvent event) pointerDown,
    required TResult Function(PointerMoveEvent event) pointerMove,
    required TResult Function(PointerUpEvent event) pointerUp,
    required TResult Function(PointerCancelEvent event) pointerCancel,
  }) {
    return pointerCancel(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
  }) {
    return pointerCancel?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PointerDownEvent event)? pointerDown,
    TResult Function(PointerMoveEvent event)? pointerMove,
    TResult Function(PointerUpEvent event)? pointerUp,
    TResult Function(PointerCancelEvent event)? pointerCancel,
    required TResult orElse(),
  }) {
    if (pointerCancel != null) {
      return pointerCancel(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingEventPointerDown value) pointerDown,
    required TResult Function(DrawingEventPointerMove value) pointerMove,
    required TResult Function(DrawingEventPointerUp value) pointerUp,
    required TResult Function(DrawingEventPointerCancel value) pointerCancel,
  }) {
    return pointerCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
  }) {
    return pointerCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingEventPointerDown value)? pointerDown,
    TResult Function(DrawingEventPointerMove value)? pointerMove,
    TResult Function(DrawingEventPointerUp value)? pointerUp,
    TResult Function(DrawingEventPointerCancel value)? pointerCancel,
    required TResult orElse(),
  }) {
    if (pointerCancel != null) {
      return pointerCancel(this);
    }
    return orElse();
  }
}

abstract class DrawingEventPointerCancel implements DrawingEvent {
  const factory DrawingEventPointerCancel(final PointerCancelEvent event) =
      _$DrawingEventPointerCancel;

  PointerCancelEvent get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DrawingEventPointerCancelCopyWith<_$DrawingEventPointerCancel>
      get copyWith => throw _privateConstructorUsedError;
}
