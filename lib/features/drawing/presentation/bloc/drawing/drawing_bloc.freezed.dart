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
mixin _$DrawingState {}

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
abstract class _$$_DrawingStateCopyWith<$Res> {
  factory _$$_DrawingStateCopyWith(
          _$_DrawingState value, $Res Function(_$_DrawingState) then) =
      __$$_DrawingStateCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$_DrawingState implements _DrawingState {
  const _$_DrawingState();

  @override
  String toString() {
    return 'DrawingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DrawingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _DrawingState implements DrawingState {
  const factory _DrawingState() = _$_DrawingState;
}

/// @nodoc
mixin _$DrawingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeToolEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeToolEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeToolEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeToolEvent value) changeToolEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
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
abstract class _$$ChangeToolEventCopyWith<$Res> {
  factory _$$ChangeToolEventCopyWith(
          _$ChangeToolEvent value, $Res Function(_$ChangeToolEvent) then) =
      __$$ChangeToolEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeToolEventCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$ChangeToolEventCopyWith<$Res> {
  __$$ChangeToolEventCopyWithImpl(
      _$ChangeToolEvent _value, $Res Function(_$ChangeToolEvent) _then)
      : super(_value, (v) => _then(v as _$ChangeToolEvent));

  @override
  _$ChangeToolEvent get _value => super._value as _$ChangeToolEvent;
}

/// @nodoc

class _$ChangeToolEvent implements ChangeToolEvent {
  const _$ChangeToolEvent();

  @override
  String toString() {
    return 'DrawingEvent.changeToolEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeToolEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeToolEvent,
  }) {
    return changeToolEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeToolEvent,
  }) {
    return changeToolEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeToolEvent,
    required TResult orElse(),
  }) {
    if (changeToolEvent != null) {
      return changeToolEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeToolEvent value) changeToolEvent,
  }) {
    return changeToolEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
  }) {
    return changeToolEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
    required TResult orElse(),
  }) {
    if (changeToolEvent != null) {
      return changeToolEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeToolEvent implements DrawingEvent {
  const factory ChangeToolEvent() = _$ChangeToolEvent;
}
