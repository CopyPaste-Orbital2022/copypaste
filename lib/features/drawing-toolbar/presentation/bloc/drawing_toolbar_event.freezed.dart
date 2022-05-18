// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawing_toolbar_event.dart';

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
    required TResult Function() initialEvent,
    required TResult Function(DrawingTool tool)
        changeSelectedDrawingButtonEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(DrawingTool tool)? changeSelectedDrawingButtonEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(DrawingTool tool)? changeSelectedDrawingButtonEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(ChangeSelectedDrawingButtonEvent value)
        changeSelectedDrawingButtonEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(ChangeSelectedDrawingButtonEvent value)?
        changeSelectedDrawingButtonEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(ChangeSelectedDrawingButtonEvent value)?
        changeSelectedDrawingButtonEvent,
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
abstract class _$$InitialEventCopyWith<$Res> {
  factory _$$InitialEventCopyWith(
          _$InitialEvent value, $Res Function(_$InitialEvent) then) =
      __$$InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialEventCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$InitialEventCopyWith<$Res> {
  __$$InitialEventCopyWithImpl(
      _$InitialEvent _value, $Res Function(_$InitialEvent) _then)
      : super(_value, (v) => _then(v as _$InitialEvent));

  @override
  _$InitialEvent get _value => super._value as _$InitialEvent;
}

/// @nodoc

class _$InitialEvent implements InitialEvent {
  const _$InitialEvent();

  @override
  String toString() {
    return 'DrawingEvent.initialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(DrawingTool tool)
        changeSelectedDrawingButtonEvent,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(DrawingTool tool)? changeSelectedDrawingButtonEvent,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(DrawingTool tool)? changeSelectedDrawingButtonEvent,
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
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(ChangeSelectedDrawingButtonEvent value)
        changeSelectedDrawingButtonEvent,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(ChangeSelectedDrawingButtonEvent value)?
        changeSelectedDrawingButtonEvent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(ChangeSelectedDrawingButtonEvent value)?
        changeSelectedDrawingButtonEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class InitialEvent implements DrawingEvent {
  const factory InitialEvent() = _$InitialEvent;
}

/// @nodoc
abstract class _$$ChangeSelectedDrawingButtonEventCopyWith<$Res> {
  factory _$$ChangeSelectedDrawingButtonEventCopyWith(
          _$ChangeSelectedDrawingButtonEvent value,
          $Res Function(_$ChangeSelectedDrawingButtonEvent) then) =
      __$$ChangeSelectedDrawingButtonEventCopyWithImpl<$Res>;
  $Res call({DrawingTool tool});
}

/// @nodoc
class __$$ChangeSelectedDrawingButtonEventCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$ChangeSelectedDrawingButtonEventCopyWith<$Res> {
  __$$ChangeSelectedDrawingButtonEventCopyWithImpl(
      _$ChangeSelectedDrawingButtonEvent _value,
      $Res Function(_$ChangeSelectedDrawingButtonEvent) _then)
      : super(_value, (v) => _then(v as _$ChangeSelectedDrawingButtonEvent));

  @override
  _$ChangeSelectedDrawingButtonEvent get _value =>
      super._value as _$ChangeSelectedDrawingButtonEvent;

  @override
  $Res call({
    Object? tool = freezed,
  }) {
    return _then(_$ChangeSelectedDrawingButtonEvent(
      tool == freezed
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as DrawingTool,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedDrawingButtonEvent
    implements ChangeSelectedDrawingButtonEvent {
  const _$ChangeSelectedDrawingButtonEvent(this.tool);

  @override
  final DrawingTool tool;

  @override
  String toString() {
    return 'DrawingEvent.changeSelectedDrawingButtonEvent(tool: $tool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedDrawingButtonEvent &&
            const DeepCollectionEquality().equals(other.tool, tool));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tool));

  @JsonKey(ignore: true)
  @override
  _$$ChangeSelectedDrawingButtonEventCopyWith<
          _$ChangeSelectedDrawingButtonEvent>
      get copyWith => __$$ChangeSelectedDrawingButtonEventCopyWithImpl<
          _$ChangeSelectedDrawingButtonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(DrawingTool tool)
        changeSelectedDrawingButtonEvent,
  }) {
    return changeSelectedDrawingButtonEvent(tool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(DrawingTool tool)? changeSelectedDrawingButtonEvent,
  }) {
    return changeSelectedDrawingButtonEvent?.call(tool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(DrawingTool tool)? changeSelectedDrawingButtonEvent,
    required TResult orElse(),
  }) {
    if (changeSelectedDrawingButtonEvent != null) {
      return changeSelectedDrawingButtonEvent(tool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initialEvent,
    required TResult Function(ChangeSelectedDrawingButtonEvent value)
        changeSelectedDrawingButtonEvent,
  }) {
    return changeSelectedDrawingButtonEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(ChangeSelectedDrawingButtonEvent value)?
        changeSelectedDrawingButtonEvent,
  }) {
    return changeSelectedDrawingButtonEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initialEvent,
    TResult Function(ChangeSelectedDrawingButtonEvent value)?
        changeSelectedDrawingButtonEvent,
    required TResult orElse(),
  }) {
    if (changeSelectedDrawingButtonEvent != null) {
      return changeSelectedDrawingButtonEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedDrawingButtonEvent implements DrawingEvent {
  const factory ChangeSelectedDrawingButtonEvent(final DrawingTool tool) =
      _$ChangeSelectedDrawingButtonEvent;

  DrawingTool get tool => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeSelectedDrawingButtonEventCopyWith<
          _$ChangeSelectedDrawingButtonEvent>
      get copyWith => throw _privateConstructorUsedError;
}
