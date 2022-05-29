// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'eraser_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EraserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeEraserSizeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeEraserSizeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeEraserSizeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEraserSizeEvent value)
        changeEraserSizeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEraserSizeEvent value)? changeEraserSizeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEraserSizeEvent value)? changeEraserSizeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EraserEventCopyWith<$Res> {
  factory $EraserEventCopyWith(
          EraserEvent value, $Res Function(EraserEvent) then) =
      _$EraserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EraserEventCopyWithImpl<$Res> implements $EraserEventCopyWith<$Res> {
  _$EraserEventCopyWithImpl(this._value, this._then);

  final EraserEvent _value;
  // ignore: unused_field
  final $Res Function(EraserEvent) _then;
}

/// @nodoc
abstract class _$$ChangeEraserSizeEventCopyWith<$Res> {
  factory _$$ChangeEraserSizeEventCopyWith(_$ChangeEraserSizeEvent value,
          $Res Function(_$ChangeEraserSizeEvent) then) =
      __$$ChangeEraserSizeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeEraserSizeEventCopyWithImpl<$Res>
    extends _$EraserEventCopyWithImpl<$Res>
    implements _$$ChangeEraserSizeEventCopyWith<$Res> {
  __$$ChangeEraserSizeEventCopyWithImpl(_$ChangeEraserSizeEvent _value,
      $Res Function(_$ChangeEraserSizeEvent) _then)
      : super(_value, (v) => _then(v as _$ChangeEraserSizeEvent));

  @override
  _$ChangeEraserSizeEvent get _value => super._value as _$ChangeEraserSizeEvent;
}

/// @nodoc

class _$ChangeEraserSizeEvent implements ChangeEraserSizeEvent {
  const _$ChangeEraserSizeEvent();

  @override
  String toString() {
    return 'EraserEvent.changeEraserSizeEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeEraserSizeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeEraserSizeEvent,
  }) {
    return changeEraserSizeEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeEraserSizeEvent,
  }) {
    return changeEraserSizeEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeEraserSizeEvent,
    required TResult orElse(),
  }) {
    if (changeEraserSizeEvent != null) {
      return changeEraserSizeEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEraserSizeEvent value)
        changeEraserSizeEvent,
  }) {
    return changeEraserSizeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEraserSizeEvent value)? changeEraserSizeEvent,
  }) {
    return changeEraserSizeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEraserSizeEvent value)? changeEraserSizeEvent,
    required TResult orElse(),
  }) {
    if (changeEraserSizeEvent != null) {
      return changeEraserSizeEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeEraserSizeEvent implements EraserEvent {
  const factory ChangeEraserSizeEvent() = _$ChangeEraserSizeEvent;
}
