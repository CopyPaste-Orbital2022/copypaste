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
  DrawingTool get tool => throw _privateConstructorUsedError;
  bool get useStylus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawingStateCopyWith<DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingStateCopyWith<$Res> {
  factory $DrawingStateCopyWith(
          DrawingState value, $Res Function(DrawingState) then) =
      _$DrawingStateCopyWithImpl<$Res>;
  $Res call({DrawingTool tool, bool useStylus});
}

/// @nodoc
class _$DrawingStateCopyWithImpl<$Res> implements $DrawingStateCopyWith<$Res> {
  _$DrawingStateCopyWithImpl(this._value, this._then);

  final DrawingState _value;
  // ignore: unused_field
  final $Res Function(DrawingState) _then;

  @override
  $Res call({
    Object? tool = freezed,
    Object? useStylus = freezed,
  }) {
    return _then(_value.copyWith(
      tool: tool == freezed
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as DrawingTool,
      useStylus: useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
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
  $Res call({DrawingTool tool, bool useStylus});
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
    Object? tool = freezed,
    Object? useStylus = freezed,
  }) {
    return _then(_$_DrawingState(
      tool: tool == freezed
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as DrawingTool,
      useStylus: useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DrawingState implements _DrawingState {
  const _$_DrawingState({required this.tool, required this.useStylus});

  @override
  final DrawingTool tool;
  @override
  final bool useStylus;

  @override
  String toString() {
    return 'DrawingState(tool: $tool, useStylus: $useStylus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingState &&
            const DeepCollectionEquality().equals(other.tool, tool) &&
            const DeepCollectionEquality().equals(other.useStylus, useStylus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tool),
      const DeepCollectionEquality().hash(useStylus));

  @JsonKey(ignore: true)
  @override
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      __$$_DrawingStateCopyWithImpl<_$_DrawingState>(this, _$identity);
}

abstract class _DrawingState implements DrawingState {
  const factory _DrawingState(
      {required final DrawingTool tool,
      required final bool useStylus}) = _$_DrawingState;

  @override
  DrawingTool get tool => throw _privateConstructorUsedError;
  @override
  bool get useStylus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DrawingTool tool) changeToolEvent,
    required TResult Function(bool useStylus) toggleUseStylusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DrawingTool tool)? changeToolEvent,
    TResult Function(bool useStylus)? toggleUseStylusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DrawingTool tool)? changeToolEvent,
    TResult Function(bool useStylus)? toggleUseStylusEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeToolEvent value) changeToolEvent,
    required TResult Function(ToggleUseStylusEvent value) toggleUseStylusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
    TResult Function(ToggleUseStylusEvent value)? toggleUseStylusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
    TResult Function(ToggleUseStylusEvent value)? toggleUseStylusEvent,
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
  $Res call({DrawingTool tool});
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

  @override
  $Res call({
    Object? tool = freezed,
  }) {
    return _then(_$ChangeToolEvent(
      tool == freezed
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as DrawingTool,
    ));
  }
}

/// @nodoc

class _$ChangeToolEvent implements ChangeToolEvent {
  const _$ChangeToolEvent(this.tool);

  @override
  final DrawingTool tool;

  @override
  String toString() {
    return 'DrawingEvent.changeToolEvent(tool: $tool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeToolEvent &&
            const DeepCollectionEquality().equals(other.tool, tool));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tool));

  @JsonKey(ignore: true)
  @override
  _$$ChangeToolEventCopyWith<_$ChangeToolEvent> get copyWith =>
      __$$ChangeToolEventCopyWithImpl<_$ChangeToolEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DrawingTool tool) changeToolEvent,
    required TResult Function(bool useStylus) toggleUseStylusEvent,
  }) {
    return changeToolEvent(tool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DrawingTool tool)? changeToolEvent,
    TResult Function(bool useStylus)? toggleUseStylusEvent,
  }) {
    return changeToolEvent?.call(tool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DrawingTool tool)? changeToolEvent,
    TResult Function(bool useStylus)? toggleUseStylusEvent,
    required TResult orElse(),
  }) {
    if (changeToolEvent != null) {
      return changeToolEvent(tool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeToolEvent value) changeToolEvent,
    required TResult Function(ToggleUseStylusEvent value) toggleUseStylusEvent,
  }) {
    return changeToolEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
    TResult Function(ToggleUseStylusEvent value)? toggleUseStylusEvent,
  }) {
    return changeToolEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
    TResult Function(ToggleUseStylusEvent value)? toggleUseStylusEvent,
    required TResult orElse(),
  }) {
    if (changeToolEvent != null) {
      return changeToolEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeToolEvent implements DrawingEvent {
  const factory ChangeToolEvent(final DrawingTool tool) = _$ChangeToolEvent;

  DrawingTool get tool => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeToolEventCopyWith<_$ChangeToolEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleUseStylusEventCopyWith<$Res> {
  factory _$$ToggleUseStylusEventCopyWith(_$ToggleUseStylusEvent value,
          $Res Function(_$ToggleUseStylusEvent) then) =
      __$$ToggleUseStylusEventCopyWithImpl<$Res>;
  $Res call({bool useStylus});
}

/// @nodoc
class __$$ToggleUseStylusEventCopyWithImpl<$Res>
    extends _$DrawingEventCopyWithImpl<$Res>
    implements _$$ToggleUseStylusEventCopyWith<$Res> {
  __$$ToggleUseStylusEventCopyWithImpl(_$ToggleUseStylusEvent _value,
      $Res Function(_$ToggleUseStylusEvent) _then)
      : super(_value, (v) => _then(v as _$ToggleUseStylusEvent));

  @override
  _$ToggleUseStylusEvent get _value => super._value as _$ToggleUseStylusEvent;

  @override
  $Res call({
    Object? useStylus = freezed,
  }) {
    return _then(_$ToggleUseStylusEvent(
      useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleUseStylusEvent implements ToggleUseStylusEvent {
  const _$ToggleUseStylusEvent(this.useStylus);

  @override
  final bool useStylus;

  @override
  String toString() {
    return 'DrawingEvent.toggleUseStylusEvent(useStylus: $useStylus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleUseStylusEvent &&
            const DeepCollectionEquality().equals(other.useStylus, useStylus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(useStylus));

  @JsonKey(ignore: true)
  @override
  _$$ToggleUseStylusEventCopyWith<_$ToggleUseStylusEvent> get copyWith =>
      __$$ToggleUseStylusEventCopyWithImpl<_$ToggleUseStylusEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DrawingTool tool) changeToolEvent,
    required TResult Function(bool useStylus) toggleUseStylusEvent,
  }) {
    return toggleUseStylusEvent(useStylus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DrawingTool tool)? changeToolEvent,
    TResult Function(bool useStylus)? toggleUseStylusEvent,
  }) {
    return toggleUseStylusEvent?.call(useStylus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DrawingTool tool)? changeToolEvent,
    TResult Function(bool useStylus)? toggleUseStylusEvent,
    required TResult orElse(),
  }) {
    if (toggleUseStylusEvent != null) {
      return toggleUseStylusEvent(useStylus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeToolEvent value) changeToolEvent,
    required TResult Function(ToggleUseStylusEvent value) toggleUseStylusEvent,
  }) {
    return toggleUseStylusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
    TResult Function(ToggleUseStylusEvent value)? toggleUseStylusEvent,
  }) {
    return toggleUseStylusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeToolEvent value)? changeToolEvent,
    TResult Function(ToggleUseStylusEvent value)? toggleUseStylusEvent,
    required TResult orElse(),
  }) {
    if (toggleUseStylusEvent != null) {
      return toggleUseStylusEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleUseStylusEvent implements DrawingEvent {
  const factory ToggleUseStylusEvent(final bool useStylus) =
      _$ToggleUseStylusEvent;

  bool get useStylus => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ToggleUseStylusEventCopyWith<_$ToggleUseStylusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
