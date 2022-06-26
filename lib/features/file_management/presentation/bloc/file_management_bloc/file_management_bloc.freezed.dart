// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileManagementState {
  List<SPDrawing> get drawings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileManagementStateCopyWith<FileManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileManagementStateCopyWith<$Res> {
  factory $FileManagementStateCopyWith(
          FileManagementState value, $Res Function(FileManagementState) then) =
      _$FileManagementStateCopyWithImpl<$Res>;
  $Res call({List<SPDrawing> drawings});
}

/// @nodoc
class _$FileManagementStateCopyWithImpl<$Res>
    implements $FileManagementStateCopyWith<$Res> {
  _$FileManagementStateCopyWithImpl(this._value, this._then);

  final FileManagementState _value;
  // ignore: unused_field
  final $Res Function(FileManagementState) _then;

  @override
  $Res call({
    Object? drawings = freezed,
  }) {
    return _then(_value.copyWith(
      drawings: drawings == freezed
          ? _value.drawings
          : drawings // ignore: cast_nullable_to_non_nullable
              as List<SPDrawing>,
    ));
  }
}

/// @nodoc
abstract class _$$_FileManagementStateCopyWith<$Res>
    implements $FileManagementStateCopyWith<$Res> {
  factory _$$_FileManagementStateCopyWith(_$_FileManagementState value,
          $Res Function(_$_FileManagementState) then) =
      __$$_FileManagementStateCopyWithImpl<$Res>;
  @override
  $Res call({List<SPDrawing> drawings});
}

/// @nodoc
class __$$_FileManagementStateCopyWithImpl<$Res>
    extends _$FileManagementStateCopyWithImpl<$Res>
    implements _$$_FileManagementStateCopyWith<$Res> {
  __$$_FileManagementStateCopyWithImpl(_$_FileManagementState _value,
      $Res Function(_$_FileManagementState) _then)
      : super(_value, (v) => _then(v as _$_FileManagementState));

  @override
  _$_FileManagementState get _value => super._value as _$_FileManagementState;

  @override
  $Res call({
    Object? drawings = freezed,
  }) {
    return _then(_$_FileManagementState(
      drawings: drawings == freezed
          ? _value._drawings
          : drawings // ignore: cast_nullable_to_non_nullable
              as List<SPDrawing>,
    ));
  }
}

/// @nodoc

class _$_FileManagementState implements _FileManagementState {
  const _$_FileManagementState({final List<SPDrawing> drawings = const []})
      : _drawings = drawings;

  final List<SPDrawing> _drawings;
  @override
  @JsonKey()
  List<SPDrawing> get drawings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drawings);
  }

  @override
  String toString() {
    return 'FileManagementState(drawings: $drawings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileManagementState &&
            const DeepCollectionEquality().equals(other._drawings, _drawings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drawings));

  @JsonKey(ignore: true)
  @override
  _$$_FileManagementStateCopyWith<_$_FileManagementState> get copyWith =>
      __$$_FileManagementStateCopyWithImpl<_$_FileManagementState>(
          this, _$identity);
}

abstract class _FileManagementState implements FileManagementState {
  const factory _FileManagementState({final List<SPDrawing> drawings}) =
      _$_FileManagementState;

  @override
  List<SPDrawing> get drawings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FileManagementStateCopyWith<_$_FileManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() createNewDrawingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? createNewDrawingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? createNewDrawingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileManagementEventInitialEvent value)
        initialEvent,
    required TResult Function(FileManagementCreateNewDrawingEvent value)
        createNewDrawingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventInitialEvent value)? initialEvent,
    TResult Function(FileManagementCreateNewDrawingEvent value)?
        createNewDrawingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventInitialEvent value)? initialEvent,
    TResult Function(FileManagementCreateNewDrawingEvent value)?
        createNewDrawingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileManagementEventCopyWith<$Res> {
  factory $FileManagementEventCopyWith(
          FileManagementEvent value, $Res Function(FileManagementEvent) then) =
      _$FileManagementEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileManagementEventCopyWithImpl<$Res>
    implements $FileManagementEventCopyWith<$Res> {
  _$FileManagementEventCopyWithImpl(this._value, this._then);

  final FileManagementEvent _value;
  // ignore: unused_field
  final $Res Function(FileManagementEvent) _then;
}

/// @nodoc
abstract class _$$FileManagementEventInitialEventCopyWith<$Res> {
  factory _$$FileManagementEventInitialEventCopyWith(
          _$FileManagementEventInitialEvent value,
          $Res Function(_$FileManagementEventInitialEvent) then) =
      __$$FileManagementEventInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileManagementEventInitialEventCopyWithImpl<$Res>
    extends _$FileManagementEventCopyWithImpl<$Res>
    implements _$$FileManagementEventInitialEventCopyWith<$Res> {
  __$$FileManagementEventInitialEventCopyWithImpl(
      _$FileManagementEventInitialEvent _value,
      $Res Function(_$FileManagementEventInitialEvent) _then)
      : super(_value, (v) => _then(v as _$FileManagementEventInitialEvent));

  @override
  _$FileManagementEventInitialEvent get _value =>
      super._value as _$FileManagementEventInitialEvent;
}

/// @nodoc

class _$FileManagementEventInitialEvent
    implements FileManagementEventInitialEvent {
  const _$FileManagementEventInitialEvent();

  @override
  String toString() {
    return 'FileManagementEvent.initialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileManagementEventInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() createNewDrawingEvent,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? createNewDrawingEvent,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? createNewDrawingEvent,
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
    required TResult Function(FileManagementEventInitialEvent value)
        initialEvent,
    required TResult Function(FileManagementCreateNewDrawingEvent value)
        createNewDrawingEvent,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventInitialEvent value)? initialEvent,
    TResult Function(FileManagementCreateNewDrawingEvent value)?
        createNewDrawingEvent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventInitialEvent value)? initialEvent,
    TResult Function(FileManagementCreateNewDrawingEvent value)?
        createNewDrawingEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class FileManagementEventInitialEvent implements FileManagementEvent {
  const factory FileManagementEventInitialEvent() =
      _$FileManagementEventInitialEvent;
}

/// @nodoc
abstract class _$$FileManagementCreateNewDrawingEventCopyWith<$Res> {
  factory _$$FileManagementCreateNewDrawingEventCopyWith(
          _$FileManagementCreateNewDrawingEvent value,
          $Res Function(_$FileManagementCreateNewDrawingEvent) then) =
      __$$FileManagementCreateNewDrawingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileManagementCreateNewDrawingEventCopyWithImpl<$Res>
    extends _$FileManagementEventCopyWithImpl<$Res>
    implements _$$FileManagementCreateNewDrawingEventCopyWith<$Res> {
  __$$FileManagementCreateNewDrawingEventCopyWithImpl(
      _$FileManagementCreateNewDrawingEvent _value,
      $Res Function(_$FileManagementCreateNewDrawingEvent) _then)
      : super(_value, (v) => _then(v as _$FileManagementCreateNewDrawingEvent));

  @override
  _$FileManagementCreateNewDrawingEvent get _value =>
      super._value as _$FileManagementCreateNewDrawingEvent;
}

/// @nodoc

class _$FileManagementCreateNewDrawingEvent
    implements FileManagementCreateNewDrawingEvent {
  const _$FileManagementCreateNewDrawingEvent();

  @override
  String toString() {
    return 'FileManagementEvent.createNewDrawingEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileManagementCreateNewDrawingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() createNewDrawingEvent,
  }) {
    return createNewDrawingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? createNewDrawingEvent,
  }) {
    return createNewDrawingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? createNewDrawingEvent,
    required TResult orElse(),
  }) {
    if (createNewDrawingEvent != null) {
      return createNewDrawingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileManagementEventInitialEvent value)
        initialEvent,
    required TResult Function(FileManagementCreateNewDrawingEvent value)
        createNewDrawingEvent,
  }) {
    return createNewDrawingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventInitialEvent value)? initialEvent,
    TResult Function(FileManagementCreateNewDrawingEvent value)?
        createNewDrawingEvent,
  }) {
    return createNewDrawingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventInitialEvent value)? initialEvent,
    TResult Function(FileManagementCreateNewDrawingEvent value)?
        createNewDrawingEvent,
    required TResult orElse(),
  }) {
    if (createNewDrawingEvent != null) {
      return createNewDrawingEvent(this);
    }
    return orElse();
  }
}

abstract class FileManagementCreateNewDrawingEvent
    implements FileManagementEvent {
  const factory FileManagementCreateNewDrawingEvent() =
      _$FileManagementCreateNewDrawingEvent;
}
