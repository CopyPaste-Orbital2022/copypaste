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

  @JsonKey(ignore: true)
  $DrawingStateCopyWith<DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingStateCopyWith<$Res> {
  factory $DrawingStateCopyWith(
          DrawingState value, $Res Function(DrawingState) then) =
      _$DrawingStateCopyWithImpl<$Res>;
  $Res call({List<SPStroke> strokes, SPStroke? currentStroke});

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
  $Res call({List<SPStroke> strokes, SPStroke? currentStroke});

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
    ));
  }
}

/// @nodoc

class _$_DrawingState implements _DrawingState {
  const _$_DrawingState(
      {final List<SPStroke> strokes = const [], this.currentStroke})
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
  String toString() {
    return 'DrawingState(strokes: $strokes, currentStroke: $currentStroke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingState &&
            const DeepCollectionEquality().equals(other._strokes, _strokes) &&
            const DeepCollectionEquality()
                .equals(other.currentStroke, currentStroke));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_strokes),
      const DeepCollectionEquality().hash(currentStroke));

  @JsonKey(ignore: true)
  @override
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      __$$_DrawingStateCopyWithImpl<_$_DrawingState>(this, _$identity);
}

abstract class _DrawingState implements DrawingState {
  const factory _DrawingState(
      {final List<SPStroke> strokes,
      final SPStroke? currentStroke}) = _$_DrawingState;

  @override
  List<SPStroke> get strokes => throw _privateConstructorUsedError;
  @override
  SPStroke? get currentStroke => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingEventInitialEvent value) initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingEventInitialEvent value)? initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingEventInitialEvent value)? initialEvent,
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
abstract class _$$DrawingEventInitialEventCopyWith<$Res> {
  factory _$$DrawingEventInitialEventCopyWith(_$DrawingEventInitialEvent value,
          $Res Function(_$DrawingEventInitialEvent) then) =
      __$$DrawingEventInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DrawingEventInitialEventCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$DrawingEventInitialEventCopyWith<$Res> {
  __$$DrawingEventInitialEventCopyWithImpl(_$DrawingEventInitialEvent _value,
      $Res Function(_$DrawingEventInitialEvent) _then)
      : super(_value, (v) => _then(v as _$DrawingEventInitialEvent));

  @override
  _$DrawingEventInitialEvent get _value =>
      super._value as _$DrawingEventInitialEvent;
}

/// @nodoc

class _$DrawingEventInitialEvent implements DrawingEventInitialEvent {
  const _$DrawingEventInitialEvent();

  @override
  String toString() {
    return 'DrawingEvent.initialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingEventInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawingEventInitialEvent value) initialEvent,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DrawingEventInitialEvent value)? initialEvent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawingEventInitialEvent value)? initialEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class DrawingEventInitialEvent implements DrawingEvent {
  const factory DrawingEventInitialEvent() = _$DrawingEventInitialEvent;
}
