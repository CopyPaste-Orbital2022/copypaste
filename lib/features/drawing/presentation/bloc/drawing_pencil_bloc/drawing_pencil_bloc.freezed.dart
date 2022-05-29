// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawing_pencil_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawingPencilState {
  SelectableItems<Color> get colors => throw _privateConstructorUsedError;
  SelectableItems<double> get widths => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawingPencilStateCopyWith<DrawingPencilState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingPencilStateCopyWith<$Res> {
  factory $DrawingPencilStateCopyWith(
          DrawingPencilState value, $Res Function(DrawingPencilState) then) =
      _$DrawingPencilStateCopyWithImpl<$Res>;
  $Res call(
      {SelectableItems<Color> colors,
      SelectableItems<double> widths,
      String? errorMessage});

  $SelectableItemsCopyWith<Color, $Res> get colors;
  $SelectableItemsCopyWith<double, $Res> get widths;
}

/// @nodoc
class _$DrawingPencilStateCopyWithImpl<$Res>
    implements $DrawingPencilStateCopyWith<$Res> {
  _$DrawingPencilStateCopyWithImpl(this._value, this._then);

  final DrawingPencilState _value;
  // ignore: unused_field
  final $Res Function(DrawingPencilState) _then;

  @override
  $Res call({
    Object? colors = freezed,
    Object? widths = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as SelectableItems<Color>,
      widths: widths == freezed
          ? _value.widths
          : widths // ignore: cast_nullable_to_non_nullable
              as SelectableItems<double>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $SelectableItemsCopyWith<Color, $Res> get colors {
    return $SelectableItemsCopyWith<Color, $Res>(_value.colors, (value) {
      return _then(_value.copyWith(colors: value));
    });
  }

  @override
  $SelectableItemsCopyWith<double, $Res> get widths {
    return $SelectableItemsCopyWith<double, $Res>(_value.widths, (value) {
      return _then(_value.copyWith(widths: value));
    });
  }
}

/// @nodoc
abstract class _$$_DrawingPencilStateCopyWith<$Res>
    implements $DrawingPencilStateCopyWith<$Res> {
  factory _$$_DrawingPencilStateCopyWith(_$_DrawingPencilState value,
          $Res Function(_$_DrawingPencilState) then) =
      __$$_DrawingPencilStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SelectableItems<Color> colors,
      SelectableItems<double> widths,
      String? errorMessage});

  @override
  $SelectableItemsCopyWith<Color, $Res> get colors;
  @override
  $SelectableItemsCopyWith<double, $Res> get widths;
}

/// @nodoc
class __$$_DrawingPencilStateCopyWithImpl<$Res>
    extends _$DrawingPencilStateCopyWithImpl<$Res>
    implements _$$_DrawingPencilStateCopyWith<$Res> {
  __$$_DrawingPencilStateCopyWithImpl(
      _$_DrawingPencilState _value, $Res Function(_$_DrawingPencilState) _then)
      : super(_value, (v) => _then(v as _$_DrawingPencilState));

  @override
  _$_DrawingPencilState get _value => super._value as _$_DrawingPencilState;

  @override
  $Res call({
    Object? colors = freezed,
    Object? widths = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_DrawingPencilState(
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as SelectableItems<Color>,
      widths: widths == freezed
          ? _value.widths
          : widths // ignore: cast_nullable_to_non_nullable
              as SelectableItems<double>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DrawingPencilState implements _DrawingPencilState {
  const _$_DrawingPencilState(
      {required this.colors, required this.widths, this.errorMessage});

  @override
  final SelectableItems<Color> colors;
  @override
  final SelectableItems<double> widths;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DrawingPencilState(colors: $colors, widths: $widths, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingPencilState &&
            const DeepCollectionEquality().equals(other.colors, colors) &&
            const DeepCollectionEquality().equals(other.widths, widths) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(widths),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_DrawingPencilStateCopyWith<_$_DrawingPencilState> get copyWith =>
      __$$_DrawingPencilStateCopyWithImpl<_$_DrawingPencilState>(
          this, _$identity);
}

abstract class _DrawingPencilState implements DrawingPencilState {
  const factory _DrawingPencilState(
      {required final SelectableItems<Color> colors,
      required final SelectableItems<double> widths,
      final String? errorMessage}) = _$_DrawingPencilState;

  @override
  SelectableItems<Color> get colors => throw _privateConstructorUsedError;
  @override
  SelectableItems<double> get widths => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingPencilStateCopyWith<_$_DrawingPencilState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawingPencilEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) changeStrokeSizeValueEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
    required TResult Function(String message) showErrorSnackbarEvent,
    required TResult Function() dismissErrorSnackbarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePencilStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePencilStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPencilErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPencilErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingPencilEventCopyWith<$Res> {
  factory $DrawingPencilEventCopyWith(
          DrawingPencilEvent value, $Res Function(DrawingPencilEvent) then) =
      _$DrawingPencilEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DrawingPencilEventCopyWithImpl<$Res>
    implements $DrawingPencilEventCopyWith<$Res> {
  _$DrawingPencilEventCopyWithImpl(this._value, this._then);

  final DrawingPencilEvent _value;
  // ignore: unused_field
  final $Res Function(DrawingPencilEvent) _then;
}

/// @nodoc
abstract class _$$ChangePencilStrokeSizeValueEventCopyWith<$Res> {
  factory _$$ChangePencilStrokeSizeValueEventCopyWith(
          _$ChangePencilStrokeSizeValueEvent value,
          $Res Function(_$ChangePencilStrokeSizeValueEvent) then) =
      __$$ChangePencilStrokeSizeValueEventCopyWithImpl<$Res>;
  $Res call({double newSize});
}

/// @nodoc
class __$$ChangePencilStrokeSizeValueEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$ChangePencilStrokeSizeValueEventCopyWith<$Res> {
  __$$ChangePencilStrokeSizeValueEventCopyWithImpl(
      _$ChangePencilStrokeSizeValueEvent _value,
      $Res Function(_$ChangePencilStrokeSizeValueEvent) _then)
      : super(_value, (v) => _then(v as _$ChangePencilStrokeSizeValueEvent));

  @override
  _$ChangePencilStrokeSizeValueEvent get _value =>
      super._value as _$ChangePencilStrokeSizeValueEvent;

  @override
  $Res call({
    Object? newSize = freezed,
  }) {
    return _then(_$ChangePencilStrokeSizeValueEvent(
      newSize == freezed
          ? _value.newSize
          : newSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangePencilStrokeSizeValueEvent
    implements ChangePencilStrokeSizeValueEvent {
  const _$ChangePencilStrokeSizeValueEvent(this.newSize);

  @override
  final double newSize;

  @override
  String toString() {
    return 'DrawingPencilEvent.changeStrokeSizeValueEvent(newSize: $newSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePencilStrokeSizeValueEvent &&
            const DeepCollectionEquality().equals(other.newSize, newSize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newSize));

  @JsonKey(ignore: true)
  @override
  _$$ChangePencilStrokeSizeValueEventCopyWith<
          _$ChangePencilStrokeSizeValueEvent>
      get copyWith => __$$ChangePencilStrokeSizeValueEventCopyWithImpl<
          _$ChangePencilStrokeSizeValueEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) changeStrokeSizeValueEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
    required TResult Function(String message) showErrorSnackbarEvent,
    required TResult Function() dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeValueEvent(newSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeValueEvent?.call(newSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeSizeValueEvent != null) {
      return changeStrokeSizeValueEvent(newSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePencilStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePencilStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPencilErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPencilErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeValueEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeValueEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeSizeValueEvent != null) {
      return changeStrokeSizeValueEvent(this);
    }
    return orElse();
  }
}

abstract class ChangePencilStrokeSizeValueEvent implements DrawingPencilEvent {
  const factory ChangePencilStrokeSizeValueEvent(final double newSize) =
      _$ChangePencilStrokeSizeValueEvent;

  double get newSize => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePencilStrokeSizeValueEventCopyWith<
          _$ChangePencilStrokeSizeValueEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePencilStrokeSizeSelectionEventCopyWith<$Res> {
  factory _$$ChangePencilStrokeSizeSelectionEventCopyWith(
          _$ChangePencilStrokeSizeSelectionEvent value,
          $Res Function(_$ChangePencilStrokeSizeSelectionEvent) then) =
      __$$ChangePencilStrokeSizeSelectionEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$ChangePencilStrokeSizeSelectionEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$ChangePencilStrokeSizeSelectionEventCopyWith<$Res> {
  __$$ChangePencilStrokeSizeSelectionEventCopyWithImpl(
      _$ChangePencilStrokeSizeSelectionEvent _value,
      $Res Function(_$ChangePencilStrokeSizeSelectionEvent) _then)
      : super(
            _value, (v) => _then(v as _$ChangePencilStrokeSizeSelectionEvent));

  @override
  _$ChangePencilStrokeSizeSelectionEvent get _value =>
      super._value as _$ChangePencilStrokeSizeSelectionEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$ChangePencilStrokeSizeSelectionEvent(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePencilStrokeSizeSelectionEvent
    implements ChangePencilStrokeSizeSelectionEvent {
  const _$ChangePencilStrokeSizeSelectionEvent(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DrawingPencilEvent.changeStrokeSizeSelectionEvent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePencilStrokeSizeSelectionEvent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$ChangePencilStrokeSizeSelectionEventCopyWith<
          _$ChangePencilStrokeSizeSelectionEvent>
      get copyWith => __$$ChangePencilStrokeSizeSelectionEventCopyWithImpl<
          _$ChangePencilStrokeSizeSelectionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) changeStrokeSizeValueEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
    required TResult Function(String message) showErrorSnackbarEvent,
    required TResult Function() dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeSelectionEvent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeSelectionEvent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeSizeSelectionEvent != null) {
      return changeStrokeSizeSelectionEvent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePencilStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePencilStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPencilErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPencilErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeSelectionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeSelectionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeSizeSelectionEvent != null) {
      return changeStrokeSizeSelectionEvent(this);
    }
    return orElse();
  }
}

abstract class ChangePencilStrokeSizeSelectionEvent
    implements DrawingPencilEvent {
  const factory ChangePencilStrokeSizeSelectionEvent(final int index) =
      _$ChangePencilStrokeSizeSelectionEvent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePencilStrokeSizeSelectionEventCopyWith<
          _$ChangePencilStrokeSizeSelectionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePencilStrokeColorSelectionEventCopyWith<$Res> {
  factory _$$ChangePencilStrokeColorSelectionEventCopyWith(
          _$ChangePencilStrokeColorSelectionEvent value,
          $Res Function(_$ChangePencilStrokeColorSelectionEvent) then) =
      __$$ChangePencilStrokeColorSelectionEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$ChangePencilStrokeColorSelectionEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$ChangePencilStrokeColorSelectionEventCopyWith<$Res> {
  __$$ChangePencilStrokeColorSelectionEventCopyWithImpl(
      _$ChangePencilStrokeColorSelectionEvent _value,
      $Res Function(_$ChangePencilStrokeColorSelectionEvent) _then)
      : super(
            _value, (v) => _then(v as _$ChangePencilStrokeColorSelectionEvent));

  @override
  _$ChangePencilStrokeColorSelectionEvent get _value =>
      super._value as _$ChangePencilStrokeColorSelectionEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$ChangePencilStrokeColorSelectionEvent(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePencilStrokeColorSelectionEvent
    implements ChangePencilStrokeColorSelectionEvent {
  const _$ChangePencilStrokeColorSelectionEvent(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DrawingPencilEvent.changeStrokeColorSelectionEvent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePencilStrokeColorSelectionEvent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$ChangePencilStrokeColorSelectionEventCopyWith<
          _$ChangePencilStrokeColorSelectionEvent>
      get copyWith => __$$ChangePencilStrokeColorSelectionEventCopyWithImpl<
          _$ChangePencilStrokeColorSelectionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) changeStrokeSizeValueEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
    required TResult Function(String message) showErrorSnackbarEvent,
    required TResult Function() dismissErrorSnackbarEvent,
  }) {
    return changeStrokeColorSelectionEvent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
  }) {
    return changeStrokeColorSelectionEvent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeColorSelectionEvent != null) {
      return changeStrokeColorSelectionEvent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePencilStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePencilStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPencilErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPencilErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeColorSelectionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeColorSelectionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeColorSelectionEvent != null) {
      return changeStrokeColorSelectionEvent(this);
    }
    return orElse();
  }
}

abstract class ChangePencilStrokeColorSelectionEvent
    implements DrawingPencilEvent {
  const factory ChangePencilStrokeColorSelectionEvent(final int index) =
      _$ChangePencilStrokeColorSelectionEvent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePencilStrokeColorSelectionEventCopyWith<
          _$ChangePencilStrokeColorSelectionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePencilCurrentColorValueEventCopyWith<$Res> {
  factory _$$ChangePencilCurrentColorValueEventCopyWith(
          _$ChangePencilCurrentColorValueEvent value,
          $Res Function(_$ChangePencilCurrentColorValueEvent) then) =
      __$$ChangePencilCurrentColorValueEventCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class __$$ChangePencilCurrentColorValueEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$ChangePencilCurrentColorValueEventCopyWith<$Res> {
  __$$ChangePencilCurrentColorValueEventCopyWithImpl(
      _$ChangePencilCurrentColorValueEvent _value,
      $Res Function(_$ChangePencilCurrentColorValueEvent) _then)
      : super(_value, (v) => _then(v as _$ChangePencilCurrentColorValueEvent));

  @override
  _$ChangePencilCurrentColorValueEvent get _value =>
      super._value as _$ChangePencilCurrentColorValueEvent;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$ChangePencilCurrentColorValueEvent(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ChangePencilCurrentColorValueEvent
    implements ChangePencilCurrentColorValueEvent {
  const _$ChangePencilCurrentColorValueEvent(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'DrawingPencilEvent.changePencilCurrentColorValueEvent(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePencilCurrentColorValueEvent &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$ChangePencilCurrentColorValueEventCopyWith<
          _$ChangePencilCurrentColorValueEvent>
      get copyWith => __$$ChangePencilCurrentColorValueEventCopyWithImpl<
          _$ChangePencilCurrentColorValueEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) changeStrokeSizeValueEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
    required TResult Function(String message) showErrorSnackbarEvent,
    required TResult Function() dismissErrorSnackbarEvent,
  }) {
    return changePencilCurrentColorValueEvent(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
  }) {
    return changePencilCurrentColorValueEvent?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changePencilCurrentColorValueEvent != null) {
      return changePencilCurrentColorValueEvent(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePencilStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePencilStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPencilErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPencilErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return changePencilCurrentColorValueEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return changePencilCurrentColorValueEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changePencilCurrentColorValueEvent != null) {
      return changePencilCurrentColorValueEvent(this);
    }
    return orElse();
  }
}

abstract class ChangePencilCurrentColorValueEvent
    implements DrawingPencilEvent {
  const factory ChangePencilCurrentColorValueEvent(final Color color) =
      _$ChangePencilCurrentColorValueEvent;

  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePencilCurrentColorValueEventCopyWith<
          _$ChangePencilCurrentColorValueEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PencilDuplicateCurrentColorEventCopyWith<$Res> {
  factory _$$PencilDuplicateCurrentColorEventCopyWith(
          _$PencilDuplicateCurrentColorEvent value,
          $Res Function(_$PencilDuplicateCurrentColorEvent) then) =
      __$$PencilDuplicateCurrentColorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PencilDuplicateCurrentColorEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$PencilDuplicateCurrentColorEventCopyWith<$Res> {
  __$$PencilDuplicateCurrentColorEventCopyWithImpl(
      _$PencilDuplicateCurrentColorEvent _value,
      $Res Function(_$PencilDuplicateCurrentColorEvent) _then)
      : super(_value, (v) => _then(v as _$PencilDuplicateCurrentColorEvent));

  @override
  _$PencilDuplicateCurrentColorEvent get _value =>
      super._value as _$PencilDuplicateCurrentColorEvent;
}

/// @nodoc

class _$PencilDuplicateCurrentColorEvent
    implements PencilDuplicateCurrentColorEvent {
  const _$PencilDuplicateCurrentColorEvent();

  @override
  String toString() {
    return 'DrawingPencilEvent.duplicateCurrentColorEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PencilDuplicateCurrentColorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) changeStrokeSizeValueEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
    required TResult Function(String message) showErrorSnackbarEvent,
    required TResult Function() dismissErrorSnackbarEvent,
  }) {
    return duplicateCurrentColorEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
  }) {
    return duplicateCurrentColorEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (duplicateCurrentColorEvent != null) {
      return duplicateCurrentColorEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePencilStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePencilStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPencilErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPencilErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return duplicateCurrentColorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return duplicateCurrentColorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (duplicateCurrentColorEvent != null) {
      return duplicateCurrentColorEvent(this);
    }
    return orElse();
  }
}

abstract class PencilDuplicateCurrentColorEvent implements DrawingPencilEvent {
  const factory PencilDuplicateCurrentColorEvent() =
      _$PencilDuplicateCurrentColorEvent;
}

/// @nodoc
abstract class _$$PencilDeleteCurrentColorEventCopyWith<$Res> {
  factory _$$PencilDeleteCurrentColorEventCopyWith(
          _$PencilDeleteCurrentColorEvent value,
          $Res Function(_$PencilDeleteCurrentColorEvent) then) =
      __$$PencilDeleteCurrentColorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PencilDeleteCurrentColorEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$PencilDeleteCurrentColorEventCopyWith<$Res> {
  __$$PencilDeleteCurrentColorEventCopyWithImpl(
      _$PencilDeleteCurrentColorEvent _value,
      $Res Function(_$PencilDeleteCurrentColorEvent) _then)
      : super(_value, (v) => _then(v as _$PencilDeleteCurrentColorEvent));

  @override
  _$PencilDeleteCurrentColorEvent get _value =>
      super._value as _$PencilDeleteCurrentColorEvent;
}

/// @nodoc

class _$PencilDeleteCurrentColorEvent implements PencilDeleteCurrentColorEvent {
  const _$PencilDeleteCurrentColorEvent();

  @override
  String toString() {
    return 'DrawingPencilEvent.deleteCurrentColorEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PencilDeleteCurrentColorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) changeStrokeSizeValueEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
    required TResult Function(String message) showErrorSnackbarEvent,
    required TResult Function() dismissErrorSnackbarEvent,
  }) {
    return deleteCurrentColorEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
  }) {
    return deleteCurrentColorEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (deleteCurrentColorEvent != null) {
      return deleteCurrentColorEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePencilStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePencilStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPencilErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPencilErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return deleteCurrentColorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return deleteCurrentColorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (deleteCurrentColorEvent != null) {
      return deleteCurrentColorEvent(this);
    }
    return orElse();
  }
}

abstract class PencilDeleteCurrentColorEvent implements DrawingPencilEvent {
  const factory PencilDeleteCurrentColorEvent() =
      _$PencilDeleteCurrentColorEvent;
}

/// @nodoc
abstract class _$$ShowPencilErrorSnackbarEventCopyWith<$Res> {
  factory _$$ShowPencilErrorSnackbarEventCopyWith(
          _$ShowPencilErrorSnackbarEvent value,
          $Res Function(_$ShowPencilErrorSnackbarEvent) then) =
      __$$ShowPencilErrorSnackbarEventCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ShowPencilErrorSnackbarEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$ShowPencilErrorSnackbarEventCopyWith<$Res> {
  __$$ShowPencilErrorSnackbarEventCopyWithImpl(
      _$ShowPencilErrorSnackbarEvent _value,
      $Res Function(_$ShowPencilErrorSnackbarEvent) _then)
      : super(_value, (v) => _then(v as _$ShowPencilErrorSnackbarEvent));

  @override
  _$ShowPencilErrorSnackbarEvent get _value =>
      super._value as _$ShowPencilErrorSnackbarEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ShowPencilErrorSnackbarEvent(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowPencilErrorSnackbarEvent implements ShowPencilErrorSnackbarEvent {
  const _$ShowPencilErrorSnackbarEvent(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DrawingPencilEvent.showErrorSnackbarEvent(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPencilErrorSnackbarEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ShowPencilErrorSnackbarEventCopyWith<_$ShowPencilErrorSnackbarEvent>
      get copyWith => __$$ShowPencilErrorSnackbarEventCopyWithImpl<
          _$ShowPencilErrorSnackbarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) changeStrokeSizeValueEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
    required TResult Function(String message) showErrorSnackbarEvent,
    required TResult Function() dismissErrorSnackbarEvent,
  }) {
    return showErrorSnackbarEvent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
  }) {
    return showErrorSnackbarEvent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (showErrorSnackbarEvent != null) {
      return showErrorSnackbarEvent(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePencilStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePencilStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPencilErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPencilErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return showErrorSnackbarEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return showErrorSnackbarEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (showErrorSnackbarEvent != null) {
      return showErrorSnackbarEvent(this);
    }
    return orElse();
  }
}

abstract class ShowPencilErrorSnackbarEvent implements DrawingPencilEvent {
  const factory ShowPencilErrorSnackbarEvent(final String message) =
      _$ShowPencilErrorSnackbarEvent;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ShowPencilErrorSnackbarEventCopyWith<_$ShowPencilErrorSnackbarEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DismissPencilErrorSnackbarEventCopyWith<$Res> {
  factory _$$DismissPencilErrorSnackbarEventCopyWith(
          _$DismissPencilErrorSnackbarEvent value,
          $Res Function(_$DismissPencilErrorSnackbarEvent) then) =
      __$$DismissPencilErrorSnackbarEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DismissPencilErrorSnackbarEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$DismissPencilErrorSnackbarEventCopyWith<$Res> {
  __$$DismissPencilErrorSnackbarEventCopyWithImpl(
      _$DismissPencilErrorSnackbarEvent _value,
      $Res Function(_$DismissPencilErrorSnackbarEvent) _then)
      : super(_value, (v) => _then(v as _$DismissPencilErrorSnackbarEvent));

  @override
  _$DismissPencilErrorSnackbarEvent get _value =>
      super._value as _$DismissPencilErrorSnackbarEvent;
}

/// @nodoc

class _$DismissPencilErrorSnackbarEvent
    implements DismissPencilErrorSnackbarEvent {
  const _$DismissPencilErrorSnackbarEvent();

  @override
  String toString() {
    return 'DrawingPencilEvent.dismissErrorSnackbarEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DismissPencilErrorSnackbarEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) changeStrokeSizeValueEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
    required TResult Function(String message) showErrorSnackbarEvent,
    required TResult Function() dismissErrorSnackbarEvent,
  }) {
    return dismissErrorSnackbarEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
  }) {
    return dismissErrorSnackbarEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? changeStrokeSizeValueEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    TResult Function(String message)? showErrorSnackbarEvent,
    TResult Function()? dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (dismissErrorSnackbarEvent != null) {
      return dismissErrorSnackbarEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePencilStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePencilStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPencilErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPencilErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return dismissErrorSnackbarEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return dismissErrorSnackbarEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePencilStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePencilStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    TResult Function(ShowPencilErrorSnackbarEvent value)?
        showErrorSnackbarEvent,
    TResult Function(DismissPencilErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (dismissErrorSnackbarEvent != null) {
      return dismissErrorSnackbarEvent(this);
    }
    return orElse();
  }
}

abstract class DismissPencilErrorSnackbarEvent implements DrawingPencilEvent {
  const factory DismissPencilErrorSnackbarEvent() =
      _$DismissPencilErrorSnackbarEvent;
}
