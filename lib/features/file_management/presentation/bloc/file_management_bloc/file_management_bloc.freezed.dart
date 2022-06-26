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
    required TResult Function() refreshListEvent,
    required TResult Function() createNewDrawingEvent,
    required TResult Function(SPDrawing drawing, String name)
        changeDrawingNameEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshListEvent,
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshListEvent,
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileManagementEventRefreshList value)
        refreshListEvent,
    required TResult Function(FileManagementEventCreateNewDrawing value)
        createNewDrawingEvent,
    required TResult Function(FileManagementEventChangeDrawingName value)
        changeDrawingNameEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventRefreshList value)? refreshListEvent,
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventRefreshList value)? refreshListEvent,
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
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
abstract class _$$FileManagementEventRefreshListCopyWith<$Res> {
  factory _$$FileManagementEventRefreshListCopyWith(
          _$FileManagementEventRefreshList value,
          $Res Function(_$FileManagementEventRefreshList) then) =
      __$$FileManagementEventRefreshListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileManagementEventRefreshListCopyWithImpl<$Res>
    extends _$FileManagementEventCopyWithImpl<$Res>
    implements _$$FileManagementEventRefreshListCopyWith<$Res> {
  __$$FileManagementEventRefreshListCopyWithImpl(
      _$FileManagementEventRefreshList _value,
      $Res Function(_$FileManagementEventRefreshList) _then)
      : super(_value, (v) => _then(v as _$FileManagementEventRefreshList));

  @override
  _$FileManagementEventRefreshList get _value =>
      super._value as _$FileManagementEventRefreshList;
}

/// @nodoc

class _$FileManagementEventRefreshList
    implements FileManagementEventRefreshList {
  const _$FileManagementEventRefreshList();

  @override
  String toString() {
    return 'FileManagementEvent.refreshListEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileManagementEventRefreshList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshListEvent,
    required TResult Function() createNewDrawingEvent,
    required TResult Function(SPDrawing drawing, String name)
        changeDrawingNameEvent,
  }) {
    return refreshListEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshListEvent,
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
  }) {
    return refreshListEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshListEvent,
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    required TResult orElse(),
  }) {
    if (refreshListEvent != null) {
      return refreshListEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileManagementEventRefreshList value)
        refreshListEvent,
    required TResult Function(FileManagementEventCreateNewDrawing value)
        createNewDrawingEvent,
    required TResult Function(FileManagementEventChangeDrawingName value)
        changeDrawingNameEvent,
  }) {
    return refreshListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventRefreshList value)? refreshListEvent,
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
  }) {
    return refreshListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventRefreshList value)? refreshListEvent,
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    required TResult orElse(),
  }) {
    if (refreshListEvent != null) {
      return refreshListEvent(this);
    }
    return orElse();
  }
}

abstract class FileManagementEventRefreshList implements FileManagementEvent {
  const factory FileManagementEventRefreshList() =
      _$FileManagementEventRefreshList;
}

/// @nodoc
abstract class _$$FileManagementEventCreateNewDrawingCopyWith<$Res> {
  factory _$$FileManagementEventCreateNewDrawingCopyWith(
          _$FileManagementEventCreateNewDrawing value,
          $Res Function(_$FileManagementEventCreateNewDrawing) then) =
      __$$FileManagementEventCreateNewDrawingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileManagementEventCreateNewDrawingCopyWithImpl<$Res>
    extends _$FileManagementEventCopyWithImpl<$Res>
    implements _$$FileManagementEventCreateNewDrawingCopyWith<$Res> {
  __$$FileManagementEventCreateNewDrawingCopyWithImpl(
      _$FileManagementEventCreateNewDrawing _value,
      $Res Function(_$FileManagementEventCreateNewDrawing) _then)
      : super(_value, (v) => _then(v as _$FileManagementEventCreateNewDrawing));

  @override
  _$FileManagementEventCreateNewDrawing get _value =>
      super._value as _$FileManagementEventCreateNewDrawing;
}

/// @nodoc

class _$FileManagementEventCreateNewDrawing
    implements FileManagementEventCreateNewDrawing {
  const _$FileManagementEventCreateNewDrawing();

  @override
  String toString() {
    return 'FileManagementEvent.createNewDrawingEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileManagementEventCreateNewDrawing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshListEvent,
    required TResult Function() createNewDrawingEvent,
    required TResult Function(SPDrawing drawing, String name)
        changeDrawingNameEvent,
  }) {
    return createNewDrawingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshListEvent,
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
  }) {
    return createNewDrawingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshListEvent,
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
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
    required TResult Function(FileManagementEventRefreshList value)
        refreshListEvent,
    required TResult Function(FileManagementEventCreateNewDrawing value)
        createNewDrawingEvent,
    required TResult Function(FileManagementEventChangeDrawingName value)
        changeDrawingNameEvent,
  }) {
    return createNewDrawingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventRefreshList value)? refreshListEvent,
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
  }) {
    return createNewDrawingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventRefreshList value)? refreshListEvent,
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    required TResult orElse(),
  }) {
    if (createNewDrawingEvent != null) {
      return createNewDrawingEvent(this);
    }
    return orElse();
  }
}

abstract class FileManagementEventCreateNewDrawing
    implements FileManagementEvent {
  const factory FileManagementEventCreateNewDrawing() =
      _$FileManagementEventCreateNewDrawing;
}

/// @nodoc
abstract class _$$FileManagementEventChangeDrawingNameCopyWith<$Res> {
  factory _$$FileManagementEventChangeDrawingNameCopyWith(
          _$FileManagementEventChangeDrawingName value,
          $Res Function(_$FileManagementEventChangeDrawingName) then) =
      __$$FileManagementEventChangeDrawingNameCopyWithImpl<$Res>;
  $Res call({SPDrawing drawing, String name});
}

/// @nodoc
class __$$FileManagementEventChangeDrawingNameCopyWithImpl<$Res>
    extends _$FileManagementEventCopyWithImpl<$Res>
    implements _$$FileManagementEventChangeDrawingNameCopyWith<$Res> {
  __$$FileManagementEventChangeDrawingNameCopyWithImpl(
      _$FileManagementEventChangeDrawingName _value,
      $Res Function(_$FileManagementEventChangeDrawingName) _then)
      : super(
            _value, (v) => _then(v as _$FileManagementEventChangeDrawingName));

  @override
  _$FileManagementEventChangeDrawingName get _value =>
      super._value as _$FileManagementEventChangeDrawingName;

  @override
  $Res call({
    Object? drawing = freezed,
    Object? name = freezed,
  }) {
    return _then(_$FileManagementEventChangeDrawingName(
      drawing == freezed
          ? _value.drawing
          : drawing // ignore: cast_nullable_to_non_nullable
              as SPDrawing,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileManagementEventChangeDrawingName
    implements FileManagementEventChangeDrawingName {
  const _$FileManagementEventChangeDrawingName(this.drawing, this.name);

  @override
  final SPDrawing drawing;
  @override
  final String name;

  @override
  String toString() {
    return 'FileManagementEvent.changeDrawingNameEvent(drawing: $drawing, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileManagementEventChangeDrawingName &&
            const DeepCollectionEquality().equals(other.drawing, drawing) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(drawing),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$FileManagementEventChangeDrawingNameCopyWith<
          _$FileManagementEventChangeDrawingName>
      get copyWith => __$$FileManagementEventChangeDrawingNameCopyWithImpl<
          _$FileManagementEventChangeDrawingName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshListEvent,
    required TResult Function() createNewDrawingEvent,
    required TResult Function(SPDrawing drawing, String name)
        changeDrawingNameEvent,
  }) {
    return changeDrawingNameEvent(drawing, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshListEvent,
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
  }) {
    return changeDrawingNameEvent?.call(drawing, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshListEvent,
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    required TResult orElse(),
  }) {
    if (changeDrawingNameEvent != null) {
      return changeDrawingNameEvent(drawing, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileManagementEventRefreshList value)
        refreshListEvent,
    required TResult Function(FileManagementEventCreateNewDrawing value)
        createNewDrawingEvent,
    required TResult Function(FileManagementEventChangeDrawingName value)
        changeDrawingNameEvent,
  }) {
    return changeDrawingNameEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventRefreshList value)? refreshListEvent,
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
  }) {
    return changeDrawingNameEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventRefreshList value)? refreshListEvent,
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    required TResult orElse(),
  }) {
    if (changeDrawingNameEvent != null) {
      return changeDrawingNameEvent(this);
    }
    return orElse();
  }
}

abstract class FileManagementEventChangeDrawingName
    implements FileManagementEvent {
  const factory FileManagementEventChangeDrawingName(
          final SPDrawing drawing, final String name) =
      _$FileManagementEventChangeDrawingName;

  SPDrawing get drawing => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FileManagementEventChangeDrawingNameCopyWith<
          _$FileManagementEventChangeDrawingName>
      get copyWith => throw _privateConstructorUsedError;
}
