// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryManagerState {
  int? get currentIndex => throw _privateConstructorUsedError;
  List<HistoryState> get stack => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryManagerStateCopyWith<HistoryManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryManagerStateCopyWith<$Res> {
  factory $HistoryManagerStateCopyWith(
          HistoryManagerState value, $Res Function(HistoryManagerState) then) =
      _$HistoryManagerStateCopyWithImpl<$Res>;
  $Res call({int? currentIndex, List<HistoryState> stack});
}

/// @nodoc
class _$HistoryManagerStateCopyWithImpl<$Res>
    implements $HistoryManagerStateCopyWith<$Res> {
  _$HistoryManagerStateCopyWithImpl(this._value, this._then);

  final HistoryManagerState _value;
  // ignore: unused_field
  final $Res Function(HistoryManagerState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? stack = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      stack: stack == freezed
          ? _value.stack
          : stack // ignore: cast_nullable_to_non_nullable
              as List<HistoryState>,
    ));
  }
}

/// @nodoc
abstract class _$$_HistoryManagerStateCopyWith<$Res>
    implements $HistoryManagerStateCopyWith<$Res> {
  factory _$$_HistoryManagerStateCopyWith(_$_HistoryManagerState value,
          $Res Function(_$_HistoryManagerState) then) =
      __$$_HistoryManagerStateCopyWithImpl<$Res>;
  @override
  $Res call({int? currentIndex, List<HistoryState> stack});
}

/// @nodoc
class __$$_HistoryManagerStateCopyWithImpl<$Res>
    extends _$HistoryManagerStateCopyWithImpl<$Res>
    implements _$$_HistoryManagerStateCopyWith<$Res> {
  __$$_HistoryManagerStateCopyWithImpl(_$_HistoryManagerState _value,
      $Res Function(_$_HistoryManagerState) _then)
      : super(_value, (v) => _then(v as _$_HistoryManagerState));

  @override
  _$_HistoryManagerState get _value => super._value as _$_HistoryManagerState;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? stack = freezed,
  }) {
    return _then(_$_HistoryManagerState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      stack: stack == freezed
          ? _value._stack
          : stack // ignore: cast_nullable_to_non_nullable
              as List<HistoryState>,
    ));
  }
}

/// @nodoc

class _$_HistoryManagerState implements _HistoryManagerState {
  const _$_HistoryManagerState(
      {this.currentIndex,
      final List<HistoryState> stack = const <HistoryState>[]})
      : _stack = stack;

  @override
  final int? currentIndex;
  final List<HistoryState> _stack;
  @override
  @JsonKey()
  List<HistoryState> get stack {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stack);
  }

  @override
  String toString() {
    return 'HistoryManagerState(currentIndex: $currentIndex, stack: $stack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryManagerState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality().equals(other._stack, _stack));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(_stack));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryManagerStateCopyWith<_$_HistoryManagerState> get copyWith =>
      __$$_HistoryManagerStateCopyWithImpl<_$_HistoryManagerState>(
          this, _$identity);
}

abstract class _HistoryManagerState implements HistoryManagerState {
  const factory _HistoryManagerState(
      {final int? currentIndex,
      final List<HistoryState> stack}) = _$_HistoryManagerState;

  @override
  int? get currentIndex => throw _privateConstructorUsedError;
  @override
  List<HistoryState> get stack => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryManagerStateCopyWith<_$_HistoryManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(HistoryState state) push,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(HistoryState state)? push,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(HistoryState state)? push,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryManagerEventUndo value) undo,
    required TResult Function(_HistoryManagerEventRedo value) redo,
    required TResult Function(_HistoryManagerEventPush value) push,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HistoryManagerEventUndo value)? undo,
    TResult Function(_HistoryManagerEventRedo value)? redo,
    TResult Function(_HistoryManagerEventPush value)? push,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryManagerEventUndo value)? undo,
    TResult Function(_HistoryManagerEventRedo value)? redo,
    TResult Function(_HistoryManagerEventPush value)? push,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryManagerEventCopyWith<$Res> {
  factory $HistoryManagerEventCopyWith(
          HistoryManagerEvent value, $Res Function(HistoryManagerEvent) then) =
      _$HistoryManagerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryManagerEventCopyWithImpl<$Res>
    implements $HistoryManagerEventCopyWith<$Res> {
  _$HistoryManagerEventCopyWithImpl(this._value, this._then);

  final HistoryManagerEvent _value;
  // ignore: unused_field
  final $Res Function(HistoryManagerEvent) _then;
}

/// @nodoc
abstract class _$$_HistoryManagerEventUndoCopyWith<$Res> {
  factory _$$_HistoryManagerEventUndoCopyWith(_$_HistoryManagerEventUndo value,
          $Res Function(_$_HistoryManagerEventUndo) then) =
      __$$_HistoryManagerEventUndoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HistoryManagerEventUndoCopyWithImpl<$Res>
    extends _$HistoryManagerEventCopyWithImpl<$Res>
    implements _$$_HistoryManagerEventUndoCopyWith<$Res> {
  __$$_HistoryManagerEventUndoCopyWithImpl(_$_HistoryManagerEventUndo _value,
      $Res Function(_$_HistoryManagerEventUndo) _then)
      : super(_value, (v) => _then(v as _$_HistoryManagerEventUndo));

  @override
  _$_HistoryManagerEventUndo get _value =>
      super._value as _$_HistoryManagerEventUndo;
}

/// @nodoc

class _$_HistoryManagerEventUndo implements _HistoryManagerEventUndo {
  const _$_HistoryManagerEventUndo();

  @override
  String toString() {
    return 'HistoryManagerEvent.undo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryManagerEventUndo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(HistoryState state) push,
  }) {
    return undo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(HistoryState state)? push,
  }) {
    return undo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(HistoryState state)? push,
    required TResult orElse(),
  }) {
    if (undo != null) {
      return undo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryManagerEventUndo value) undo,
    required TResult Function(_HistoryManagerEventRedo value) redo,
    required TResult Function(_HistoryManagerEventPush value) push,
  }) {
    return undo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HistoryManagerEventUndo value)? undo,
    TResult Function(_HistoryManagerEventRedo value)? redo,
    TResult Function(_HistoryManagerEventPush value)? push,
  }) {
    return undo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryManagerEventUndo value)? undo,
    TResult Function(_HistoryManagerEventRedo value)? redo,
    TResult Function(_HistoryManagerEventPush value)? push,
    required TResult orElse(),
  }) {
    if (undo != null) {
      return undo(this);
    }
    return orElse();
  }
}

abstract class _HistoryManagerEventUndo implements HistoryManagerEvent {
  const factory _HistoryManagerEventUndo() = _$_HistoryManagerEventUndo;
}

/// @nodoc
abstract class _$$_HistoryManagerEventRedoCopyWith<$Res> {
  factory _$$_HistoryManagerEventRedoCopyWith(_$_HistoryManagerEventRedo value,
          $Res Function(_$_HistoryManagerEventRedo) then) =
      __$$_HistoryManagerEventRedoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HistoryManagerEventRedoCopyWithImpl<$Res>
    extends _$HistoryManagerEventCopyWithImpl<$Res>
    implements _$$_HistoryManagerEventRedoCopyWith<$Res> {
  __$$_HistoryManagerEventRedoCopyWithImpl(_$_HistoryManagerEventRedo _value,
      $Res Function(_$_HistoryManagerEventRedo) _then)
      : super(_value, (v) => _then(v as _$_HistoryManagerEventRedo));

  @override
  _$_HistoryManagerEventRedo get _value =>
      super._value as _$_HistoryManagerEventRedo;
}

/// @nodoc

class _$_HistoryManagerEventRedo implements _HistoryManagerEventRedo {
  const _$_HistoryManagerEventRedo();

  @override
  String toString() {
    return 'HistoryManagerEvent.redo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryManagerEventRedo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(HistoryState state) push,
  }) {
    return redo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(HistoryState state)? push,
  }) {
    return redo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(HistoryState state)? push,
    required TResult orElse(),
  }) {
    if (redo != null) {
      return redo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryManagerEventUndo value) undo,
    required TResult Function(_HistoryManagerEventRedo value) redo,
    required TResult Function(_HistoryManagerEventPush value) push,
  }) {
    return redo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HistoryManagerEventUndo value)? undo,
    TResult Function(_HistoryManagerEventRedo value)? redo,
    TResult Function(_HistoryManagerEventPush value)? push,
  }) {
    return redo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryManagerEventUndo value)? undo,
    TResult Function(_HistoryManagerEventRedo value)? redo,
    TResult Function(_HistoryManagerEventPush value)? push,
    required TResult orElse(),
  }) {
    if (redo != null) {
      return redo(this);
    }
    return orElse();
  }
}

abstract class _HistoryManagerEventRedo implements HistoryManagerEvent {
  const factory _HistoryManagerEventRedo() = _$_HistoryManagerEventRedo;
}

/// @nodoc
abstract class _$$_HistoryManagerEventPushCopyWith<$Res> {
  factory _$$_HistoryManagerEventPushCopyWith(_$_HistoryManagerEventPush value,
          $Res Function(_$_HistoryManagerEventPush) then) =
      __$$_HistoryManagerEventPushCopyWithImpl<$Res>;
  $Res call({HistoryState state});
}

/// @nodoc
class __$$_HistoryManagerEventPushCopyWithImpl<$Res>
    extends _$HistoryManagerEventCopyWithImpl<$Res>
    implements _$$_HistoryManagerEventPushCopyWith<$Res> {
  __$$_HistoryManagerEventPushCopyWithImpl(_$_HistoryManagerEventPush _value,
      $Res Function(_$_HistoryManagerEventPush) _then)
      : super(_value, (v) => _then(v as _$_HistoryManagerEventPush));

  @override
  _$_HistoryManagerEventPush get _value =>
      super._value as _$_HistoryManagerEventPush;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$_HistoryManagerEventPush(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as HistoryState,
    ));
  }
}

/// @nodoc

class _$_HistoryManagerEventPush implements _HistoryManagerEventPush {
  const _$_HistoryManagerEventPush(this.state);

  @override
  final HistoryState state;

  @override
  String toString() {
    return 'HistoryManagerEvent.push(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryManagerEventPush &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryManagerEventPushCopyWith<_$_HistoryManagerEventPush>
      get copyWith =>
          __$$_HistoryManagerEventPushCopyWithImpl<_$_HistoryManagerEventPush>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(HistoryState state) push,
  }) {
    return push(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(HistoryState state)? push,
  }) {
    return push?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(HistoryState state)? push,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryManagerEventUndo value) undo,
    required TResult Function(_HistoryManagerEventRedo value) redo,
    required TResult Function(_HistoryManagerEventPush value) push,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HistoryManagerEventUndo value)? undo,
    TResult Function(_HistoryManagerEventRedo value)? redo,
    TResult Function(_HistoryManagerEventPush value)? push,
  }) {
    return push?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryManagerEventUndo value)? undo,
    TResult Function(_HistoryManagerEventRedo value)? redo,
    TResult Function(_HistoryManagerEventPush value)? push,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class _HistoryManagerEventPush implements HistoryManagerEvent {
  const factory _HistoryManagerEventPush(final HistoryState state) =
      _$_HistoryManagerEventPush;

  HistoryState get state => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_HistoryManagerEventPushCopyWith<_$_HistoryManagerEventPush>
      get copyWith => throw _privateConstructorUsedError;
}
