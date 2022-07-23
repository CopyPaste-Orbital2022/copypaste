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
  SPDrawing? get selectedDrawing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileManagementStateCopyWith<FileManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileManagementStateCopyWith<$Res> {
  factory $FileManagementStateCopyWith(
          FileManagementState value, $Res Function(FileManagementState) then) =
      _$FileManagementStateCopyWithImpl<$Res>;
  $Res call({List<SPDrawing> drawings, SPDrawing? selectedDrawing});

  $SPDrawingCopyWith<$Res>? get selectedDrawing;
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
    Object? selectedDrawing = freezed,
  }) {
    return _then(_value.copyWith(
      drawings: drawings == freezed
          ? _value.drawings
          : drawings // ignore: cast_nullable_to_non_nullable
              as List<SPDrawing>,
      selectedDrawing: selectedDrawing == freezed
          ? _value.selectedDrawing
          : selectedDrawing // ignore: cast_nullable_to_non_nullable
              as SPDrawing?,
    ));
  }

  @override
  $SPDrawingCopyWith<$Res>? get selectedDrawing {
    if (_value.selectedDrawing == null) {
      return null;
    }

    return $SPDrawingCopyWith<$Res>(_value.selectedDrawing!, (value) {
      return _then(_value.copyWith(selectedDrawing: value));
    });
  }
}

/// @nodoc
abstract class _$$_FileManagementStateCopyWith<$Res>
    implements $FileManagementStateCopyWith<$Res> {
  factory _$$_FileManagementStateCopyWith(_$_FileManagementState value,
          $Res Function(_$_FileManagementState) then) =
      __$$_FileManagementStateCopyWithImpl<$Res>;
  @override
  $Res call({List<SPDrawing> drawings, SPDrawing? selectedDrawing});

  @override
  $SPDrawingCopyWith<$Res>? get selectedDrawing;
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
    Object? selectedDrawing = freezed,
  }) {
    return _then(_$_FileManagementState(
      drawings: drawings == freezed
          ? _value._drawings
          : drawings // ignore: cast_nullable_to_non_nullable
              as List<SPDrawing>,
      selectedDrawing: selectedDrawing == freezed
          ? _value.selectedDrawing
          : selectedDrawing // ignore: cast_nullable_to_non_nullable
              as SPDrawing?,
    ));
  }
}

/// @nodoc

class _$_FileManagementState
    with DiagnosticableTreeMixin
    implements _FileManagementState {
  const _$_FileManagementState(
      {final List<SPDrawing> drawings = const [], this.selectedDrawing})
      : _drawings = drawings;

  final List<SPDrawing> _drawings;
  @override
  @JsonKey()
  List<SPDrawing> get drawings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drawings);
  }

  @override
  final SPDrawing? selectedDrawing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileManagementState(drawings: $drawings, selectedDrawing: $selectedDrawing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileManagementState'))
      ..add(DiagnosticsProperty('drawings', drawings))
      ..add(DiagnosticsProperty('selectedDrawing', selectedDrawing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileManagementState &&
            const DeepCollectionEquality().equals(other._drawings, _drawings) &&
            const DeepCollectionEquality()
                .equals(other.selectedDrawing, selectedDrawing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_drawings),
      const DeepCollectionEquality().hash(selectedDrawing));

  @JsonKey(ignore: true)
  @override
  _$$_FileManagementStateCopyWith<_$_FileManagementState> get copyWith =>
      __$$_FileManagementStateCopyWithImpl<_$_FileManagementState>(
          this, _$identity);
}

abstract class _FileManagementState implements FileManagementState {
  const factory _FileManagementState(
      {final List<SPDrawing> drawings,
      final SPDrawing? selectedDrawing}) = _$_FileManagementState;

  @override
  List<SPDrawing> get drawings;
  @override
  SPDrawing? get selectedDrawing;
  @override
  @JsonKey(ignore: true)
  _$$_FileManagementStateCopyWith<_$_FileManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createNewDrawingEvent,
    required TResult Function(SPDrawing drawing, String name)
        changeDrawingNameEvent,
    required TResult Function(SPDrawing drawing) selectDrawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    TResult Function(SPDrawing drawing)? selectDrawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    TResult Function(SPDrawing drawing)? selectDrawing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileManagementEventCreateNewDrawing value)
        createNewDrawingEvent,
    required TResult Function(FileManagementEventChangeDrawingName value)
        changeDrawingNameEvent,
    required TResult Function(FileManagementEventSelectDrawing value)
        selectDrawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    TResult Function(FileManagementEventSelectDrawing value)? selectDrawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    TResult Function(FileManagementEventSelectDrawing value)? selectDrawing,
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
    with DiagnosticableTreeMixin
    implements FileManagementEventCreateNewDrawing {
  const _$FileManagementEventCreateNewDrawing();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileManagementEvent.createNewDrawingEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'FileManagementEvent.createNewDrawingEvent'));
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
    required TResult Function() createNewDrawingEvent,
    required TResult Function(SPDrawing drawing, String name)
        changeDrawingNameEvent,
    required TResult Function(SPDrawing drawing) selectDrawing,
  }) {
    return createNewDrawingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    TResult Function(SPDrawing drawing)? selectDrawing,
  }) {
    return createNewDrawingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    TResult Function(SPDrawing drawing)? selectDrawing,
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
    required TResult Function(FileManagementEventCreateNewDrawing value)
        createNewDrawingEvent,
    required TResult Function(FileManagementEventChangeDrawingName value)
        changeDrawingNameEvent,
    required TResult Function(FileManagementEventSelectDrawing value)
        selectDrawing,
  }) {
    return createNewDrawingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    TResult Function(FileManagementEventSelectDrawing value)? selectDrawing,
  }) {
    return createNewDrawingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    TResult Function(FileManagementEventSelectDrawing value)? selectDrawing,
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

  $SPDrawingCopyWith<$Res> get drawing;
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

  @override
  $SPDrawingCopyWith<$Res> get drawing {
    return $SPDrawingCopyWith<$Res>(_value.drawing, (value) {
      return _then(_value.copyWith(drawing: value));
    });
  }
}

/// @nodoc

class _$FileManagementEventChangeDrawingName
    with DiagnosticableTreeMixin
    implements FileManagementEventChangeDrawingName {
  const _$FileManagementEventChangeDrawingName(this.drawing, this.name);

  @override
  final SPDrawing drawing;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileManagementEvent.changeDrawingNameEvent(drawing: $drawing, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FileManagementEvent.changeDrawingNameEvent'))
      ..add(DiagnosticsProperty('drawing', drawing))
      ..add(DiagnosticsProperty('name', name));
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
    required TResult Function() createNewDrawingEvent,
    required TResult Function(SPDrawing drawing, String name)
        changeDrawingNameEvent,
    required TResult Function(SPDrawing drawing) selectDrawing,
  }) {
    return changeDrawingNameEvent(drawing, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    TResult Function(SPDrawing drawing)? selectDrawing,
  }) {
    return changeDrawingNameEvent?.call(drawing, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    TResult Function(SPDrawing drawing)? selectDrawing,
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
    required TResult Function(FileManagementEventCreateNewDrawing value)
        createNewDrawingEvent,
    required TResult Function(FileManagementEventChangeDrawingName value)
        changeDrawingNameEvent,
    required TResult Function(FileManagementEventSelectDrawing value)
        selectDrawing,
  }) {
    return changeDrawingNameEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    TResult Function(FileManagementEventSelectDrawing value)? selectDrawing,
  }) {
    return changeDrawingNameEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    TResult Function(FileManagementEventSelectDrawing value)? selectDrawing,
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

  SPDrawing get drawing;
  String get name;
  @JsonKey(ignore: true)
  _$$FileManagementEventChangeDrawingNameCopyWith<
          _$FileManagementEventChangeDrawingName>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileManagementEventSelectDrawingCopyWith<$Res> {
  factory _$$FileManagementEventSelectDrawingCopyWith(
          _$FileManagementEventSelectDrawing value,
          $Res Function(_$FileManagementEventSelectDrawing) then) =
      __$$FileManagementEventSelectDrawingCopyWithImpl<$Res>;
  $Res call({SPDrawing drawing});

  $SPDrawingCopyWith<$Res> get drawing;
}

/// @nodoc
class __$$FileManagementEventSelectDrawingCopyWithImpl<$Res>
    extends _$FileManagementEventCopyWithImpl<$Res>
    implements _$$FileManagementEventSelectDrawingCopyWith<$Res> {
  __$$FileManagementEventSelectDrawingCopyWithImpl(
      _$FileManagementEventSelectDrawing _value,
      $Res Function(_$FileManagementEventSelectDrawing) _then)
      : super(_value, (v) => _then(v as _$FileManagementEventSelectDrawing));

  @override
  _$FileManagementEventSelectDrawing get _value =>
      super._value as _$FileManagementEventSelectDrawing;

  @override
  $Res call({
    Object? drawing = freezed,
  }) {
    return _then(_$FileManagementEventSelectDrawing(
      drawing == freezed
          ? _value.drawing
          : drawing // ignore: cast_nullable_to_non_nullable
              as SPDrawing,
    ));
  }

  @override
  $SPDrawingCopyWith<$Res> get drawing {
    return $SPDrawingCopyWith<$Res>(_value.drawing, (value) {
      return _then(_value.copyWith(drawing: value));
    });
  }
}

/// @nodoc

class _$FileManagementEventSelectDrawing
    with DiagnosticableTreeMixin
    implements FileManagementEventSelectDrawing {
  const _$FileManagementEventSelectDrawing(this.drawing);

  @override
  final SPDrawing drawing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileManagementEvent.selectDrawing(drawing: $drawing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileManagementEvent.selectDrawing'))
      ..add(DiagnosticsProperty('drawing', drawing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileManagementEventSelectDrawing &&
            const DeepCollectionEquality().equals(other.drawing, drawing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(drawing));

  @JsonKey(ignore: true)
  @override
  _$$FileManagementEventSelectDrawingCopyWith<
          _$FileManagementEventSelectDrawing>
      get copyWith => __$$FileManagementEventSelectDrawingCopyWithImpl<
          _$FileManagementEventSelectDrawing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createNewDrawingEvent,
    required TResult Function(SPDrawing drawing, String name)
        changeDrawingNameEvent,
    required TResult Function(SPDrawing drawing) selectDrawing,
  }) {
    return selectDrawing(drawing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    TResult Function(SPDrawing drawing)? selectDrawing,
  }) {
    return selectDrawing?.call(drawing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createNewDrawingEvent,
    TResult Function(SPDrawing drawing, String name)? changeDrawingNameEvent,
    TResult Function(SPDrawing drawing)? selectDrawing,
    required TResult orElse(),
  }) {
    if (selectDrawing != null) {
      return selectDrawing(drawing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileManagementEventCreateNewDrawing value)
        createNewDrawingEvent,
    required TResult Function(FileManagementEventChangeDrawingName value)
        changeDrawingNameEvent,
    required TResult Function(FileManagementEventSelectDrawing value)
        selectDrawing,
  }) {
    return selectDrawing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    TResult Function(FileManagementEventSelectDrawing value)? selectDrawing,
  }) {
    return selectDrawing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileManagementEventCreateNewDrawing value)?
        createNewDrawingEvent,
    TResult Function(FileManagementEventChangeDrawingName value)?
        changeDrawingNameEvent,
    TResult Function(FileManagementEventSelectDrawing value)? selectDrawing,
    required TResult orElse(),
  }) {
    if (selectDrawing != null) {
      return selectDrawing(this);
    }
    return orElse();
  }
}

abstract class FileManagementEventSelectDrawing implements FileManagementEvent {
  const factory FileManagementEventSelectDrawing(final SPDrawing drawing) =
      _$FileManagementEventSelectDrawing;

  SPDrawing get drawing;
  @JsonKey(ignore: true)
  _$$FileManagementEventSelectDrawingCopyWith<
          _$FileManagementEventSelectDrawing>
      get copyWith => throw _privateConstructorUsedError;
}
