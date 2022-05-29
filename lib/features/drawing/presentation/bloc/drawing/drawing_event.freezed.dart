// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawing_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DrawingTool tool) switchToToolEvent,
    required TResult Function(bool useStylus) setUseStylusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DrawingTool tool)? switchToToolEvent,
    TResult Function(bool useStylus)? setUseStylusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DrawingTool tool)? switchToToolEvent,
    TResult Function(bool useStylus)? setUseStylusEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchToToolEvent value) switchToToolEvent,
    required TResult Function(_SetUseStylusEvent value) setUseStylusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SwitchToToolEvent value)? switchToToolEvent,
    TResult Function(_SetUseStylusEvent value)? setUseStylusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchToToolEvent value)? switchToToolEvent,
    TResult Function(_SetUseStylusEvent value)? setUseStylusEvent,
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
abstract class _$$_SwitchToToolEventCopyWith<$Res> {
  factory _$$_SwitchToToolEventCopyWith(_$_SwitchToToolEvent value,
          $Res Function(_$_SwitchToToolEvent) then) =
      __$$_SwitchToToolEventCopyWithImpl<$Res>;
  $Res call({DrawingTool tool});
}

/// @nodoc
class __$$_SwitchToToolEventCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$_SwitchToToolEventCopyWith<$Res> {
  __$$_SwitchToToolEventCopyWithImpl(
      _$_SwitchToToolEvent _value, $Res Function(_$_SwitchToToolEvent) _then)
      : super(_value, (v) => _then(v as _$_SwitchToToolEvent));

  @override
  _$_SwitchToToolEvent get _value => super._value as _$_SwitchToToolEvent;

  @override
  $Res call({
    Object? tool = freezed,
  }) {
    return _then(_$_SwitchToToolEvent(
      tool == freezed
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as DrawingTool,
    ));
  }
}

/// @nodoc

class _$_SwitchToToolEvent implements _SwitchToToolEvent {
  const _$_SwitchToToolEvent(this.tool);

  @override
  final DrawingTool tool;

  @override
  String toString() {
    return 'DrawingEvent.switchToToolEvent(tool: $tool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchToToolEvent &&
            const DeepCollectionEquality().equals(other.tool, tool));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tool));

  @JsonKey(ignore: true)
  @override
  _$$_SwitchToToolEventCopyWith<_$_SwitchToToolEvent> get copyWith =>
      __$$_SwitchToToolEventCopyWithImpl<_$_SwitchToToolEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DrawingTool tool) switchToToolEvent,
    required TResult Function(bool useStylus) setUseStylusEvent,
  }) {
    return switchToToolEvent(tool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DrawingTool tool)? switchToToolEvent,
    TResult Function(bool useStylus)? setUseStylusEvent,
  }) {
    return switchToToolEvent?.call(tool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DrawingTool tool)? switchToToolEvent,
    TResult Function(bool useStylus)? setUseStylusEvent,
    required TResult orElse(),
  }) {
    if (switchToToolEvent != null) {
      return switchToToolEvent(tool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchToToolEvent value) switchToToolEvent,
    required TResult Function(_SetUseStylusEvent value) setUseStylusEvent,
  }) {
    return switchToToolEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SwitchToToolEvent value)? switchToToolEvent,
    TResult Function(_SetUseStylusEvent value)? setUseStylusEvent,
  }) {
    return switchToToolEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchToToolEvent value)? switchToToolEvent,
    TResult Function(_SetUseStylusEvent value)? setUseStylusEvent,
    required TResult orElse(),
  }) {
    if (switchToToolEvent != null) {
      return switchToToolEvent(this);
    }
    return orElse();
  }
}

abstract class _SwitchToToolEvent implements DrawingEvent {
  const factory _SwitchToToolEvent(final DrawingTool tool) =
      _$_SwitchToToolEvent;

  DrawingTool get tool => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SwitchToToolEventCopyWith<_$_SwitchToToolEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetUseStylusEventCopyWith<$Res> {
  factory _$$_SetUseStylusEventCopyWith(_$_SetUseStylusEvent value,
          $Res Function(_$_SetUseStylusEvent) then) =
      __$$_SetUseStylusEventCopyWithImpl<$Res>;
  $Res call({bool useStylus});
}

/// @nodoc
class __$$_SetUseStylusEventCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$_SetUseStylusEventCopyWith<$Res> {
  __$$_SetUseStylusEventCopyWithImpl(
      _$_SetUseStylusEvent _value, $Res Function(_$_SetUseStylusEvent) _then)
      : super(_value, (v) => _then(v as _$_SetUseStylusEvent));

  @override
  _$_SetUseStylusEvent get _value => super._value as _$_SetUseStylusEvent;

  @override
  $Res call({
    Object? useStylus = freezed,
  }) {
    return _then(_$_SetUseStylusEvent(
      useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetUseStylusEvent implements _SetUseStylusEvent {
  const _$_SetUseStylusEvent(this.useStylus);

  @override
  final bool useStylus;

  @override
  String toString() {
    return 'DrawingEvent.setUseStylusEvent(useStylus: $useStylus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetUseStylusEvent &&
            const DeepCollectionEquality().equals(other.useStylus, useStylus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(useStylus));

  @JsonKey(ignore: true)
  @override
  _$$_SetUseStylusEventCopyWith<_$_SetUseStylusEvent> get copyWith =>
      __$$_SetUseStylusEventCopyWithImpl<_$_SetUseStylusEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DrawingTool tool) switchToToolEvent,
    required TResult Function(bool useStylus) setUseStylusEvent,
  }) {
    return setUseStylusEvent(useStylus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DrawingTool tool)? switchToToolEvent,
    TResult Function(bool useStylus)? setUseStylusEvent,
  }) {
    return setUseStylusEvent?.call(useStylus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DrawingTool tool)? switchToToolEvent,
    TResult Function(bool useStylus)? setUseStylusEvent,
    required TResult orElse(),
  }) {
    if (setUseStylusEvent != null) {
      return setUseStylusEvent(useStylus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchToToolEvent value) switchToToolEvent,
    required TResult Function(_SetUseStylusEvent value) setUseStylusEvent,
  }) {
    return setUseStylusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SwitchToToolEvent value)? switchToToolEvent,
    TResult Function(_SetUseStylusEvent value)? setUseStylusEvent,
  }) {
    return setUseStylusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchToToolEvent value)? switchToToolEvent,
    TResult Function(_SetUseStylusEvent value)? setUseStylusEvent,
    required TResult orElse(),
  }) {
    if (setUseStylusEvent != null) {
      return setUseStylusEvent(this);
    }
    return orElse();
  }
}

abstract class _SetUseStylusEvent implements DrawingEvent {
  const factory _SetUseStylusEvent(final bool useStylus) = _$_SetUseStylusEvent;

  bool get useStylus => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetUseStylusEventCopyWith<_$_SetUseStylusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
