// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawing_pen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawingPenState {
  SelectableItems<Color> get colors => throw _privateConstructorUsedError;
  SelectableItems<double> get widths => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawingPenStateCopyWith<DrawingPenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingPenStateCopyWith<$Res> {
  factory $DrawingPenStateCopyWith(
          DrawingPenState value, $Res Function(DrawingPenState) then) =
      _$DrawingPenStateCopyWithImpl<$Res>;
  $Res call(
      {SelectableItems<Color> colors,
      SelectableItems<double> widths,
      String? errorMessage});

  $SelectableItemsCopyWith<Color, $Res> get colors;
  $SelectableItemsCopyWith<double, $Res> get widths;
}

/// @nodoc
class _$DrawingPenStateCopyWithImpl<$Res>
    implements $DrawingPenStateCopyWith<$Res> {
  _$DrawingPenStateCopyWithImpl(this._value, this._then);

  final DrawingPenState _value;
  // ignore: unused_field
  final $Res Function(DrawingPenState) _then;

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
abstract class _$$_DrawingPenStateCopyWith<$Res>
    implements $DrawingPenStateCopyWith<$Res> {
  factory _$$_DrawingPenStateCopyWith(
          _$_DrawingPenState value, $Res Function(_$_DrawingPenState) then) =
      __$$_DrawingPenStateCopyWithImpl<$Res>;
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
class __$$_DrawingPenStateCopyWithImpl<$Res>
    extends _$DrawingPenStateCopyWithImpl<$Res>
    implements _$$_DrawingPenStateCopyWith<$Res> {
  __$$_DrawingPenStateCopyWithImpl(
      _$_DrawingPenState _value, $Res Function(_$_DrawingPenState) _then)
      : super(_value, (v) => _then(v as _$_DrawingPenState));

  @override
  _$_DrawingPenState get _value => super._value as _$_DrawingPenState;

  @override
  $Res call({
    Object? colors = freezed,
    Object? widths = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_DrawingPenState(
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

class _$_DrawingPenState implements _DrawingPenState {
  const _$_DrawingPenState(
      {required this.colors, required this.widths, this.errorMessage});

  @override
  final SelectableItems<Color> colors;
  @override
  final SelectableItems<double> widths;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DrawingPenState(colors: $colors, widths: $widths, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingPenState &&
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
  _$$_DrawingPenStateCopyWith<_$_DrawingPenState> get copyWith =>
      __$$_DrawingPenStateCopyWithImpl<_$_DrawingPenState>(this, _$identity);
}

abstract class _DrawingPenState implements DrawingPenState {
  const factory _DrawingPenState(
      {required final SelectableItems<Color> colors,
      required final SelectableItems<double> widths,
      final String? errorMessage}) = _$_DrawingPenState;

  @override
  SelectableItems<Color> get colors => throw _privateConstructorUsedError;
  @override
  SelectableItems<double> get widths => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingPenStateCopyWith<_$_DrawingPenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawingPenEvent {
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
    required TResult Function(ChangePenStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePenStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePenStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePenCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PenDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PenDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPenErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPenErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingPenEventCopyWith<$Res> {
  factory $DrawingPenEventCopyWith(
          DrawingPenEvent value, $Res Function(DrawingPenEvent) then) =
      _$DrawingPenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DrawingPenEventCopyWithImpl<$Res>
    implements $DrawingPenEventCopyWith<$Res> {
  _$DrawingPenEventCopyWithImpl(this._value, this._then);

  final DrawingPenEvent _value;
  // ignore: unused_field
  final $Res Function(DrawingPenEvent) _then;
}

/// @nodoc
abstract class _$$ChangePenStrokeSizeValueEventCopyWith<$Res> {
  factory _$$ChangePenStrokeSizeValueEventCopyWith(
          _$ChangePenStrokeSizeValueEvent value,
          $Res Function(_$ChangePenStrokeSizeValueEvent) then) =
      __$$ChangePenStrokeSizeValueEventCopyWithImpl<$Res>;
  $Res call({double newSize});
}

/// @nodoc
class __$$ChangePenStrokeSizeValueEventCopyWithImpl<$Res>
    extends _$DrawingPenEventCopyWithImpl<$Res>
    implements _$$ChangePenStrokeSizeValueEventCopyWith<$Res> {
  __$$ChangePenStrokeSizeValueEventCopyWithImpl(
      _$ChangePenStrokeSizeValueEvent _value,
      $Res Function(_$ChangePenStrokeSizeValueEvent) _then)
      : super(_value, (v) => _then(v as _$ChangePenStrokeSizeValueEvent));

  @override
  _$ChangePenStrokeSizeValueEvent get _value =>
      super._value as _$ChangePenStrokeSizeValueEvent;

  @override
  $Res call({
    Object? newSize = freezed,
  }) {
    return _then(_$ChangePenStrokeSizeValueEvent(
      newSize == freezed
          ? _value.newSize
          : newSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangePenStrokeSizeValueEvent implements ChangePenStrokeSizeValueEvent {
  const _$ChangePenStrokeSizeValueEvent(this.newSize);

  @override
  final double newSize;

  @override
  String toString() {
    return 'DrawingPenEvent.changeStrokeSizeValueEvent(newSize: $newSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePenStrokeSizeValueEvent &&
            const DeepCollectionEquality().equals(other.newSize, newSize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newSize));

  @JsonKey(ignore: true)
  @override
  _$$ChangePenStrokeSizeValueEventCopyWith<_$ChangePenStrokeSizeValueEvent>
      get copyWith => __$$ChangePenStrokeSizeValueEventCopyWithImpl<
          _$ChangePenStrokeSizeValueEvent>(this, _$identity);

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
    required TResult Function(ChangePenStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePenStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePenStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePenCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PenDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PenDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPenErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPenErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeValueEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeValueEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeSizeValueEvent != null) {
      return changeStrokeSizeValueEvent(this);
    }
    return orElse();
  }
}

abstract class ChangePenStrokeSizeValueEvent implements DrawingPenEvent {
  const factory ChangePenStrokeSizeValueEvent(final double newSize) =
      _$ChangePenStrokeSizeValueEvent;

  double get newSize => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePenStrokeSizeValueEventCopyWith<_$ChangePenStrokeSizeValueEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePenStrokeSizeSelectionEventCopyWith<$Res> {
  factory _$$ChangePenStrokeSizeSelectionEventCopyWith(
          _$ChangePenStrokeSizeSelectionEvent value,
          $Res Function(_$ChangePenStrokeSizeSelectionEvent) then) =
      __$$ChangePenStrokeSizeSelectionEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$ChangePenStrokeSizeSelectionEventCopyWithImpl<$Res>
    extends _$DrawingPenEventCopyWithImpl<$Res>
    implements _$$ChangePenStrokeSizeSelectionEventCopyWith<$Res> {
  __$$ChangePenStrokeSizeSelectionEventCopyWithImpl(
      _$ChangePenStrokeSizeSelectionEvent _value,
      $Res Function(_$ChangePenStrokeSizeSelectionEvent) _then)
      : super(_value, (v) => _then(v as _$ChangePenStrokeSizeSelectionEvent));

  @override
  _$ChangePenStrokeSizeSelectionEvent get _value =>
      super._value as _$ChangePenStrokeSizeSelectionEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$ChangePenStrokeSizeSelectionEvent(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePenStrokeSizeSelectionEvent
    implements ChangePenStrokeSizeSelectionEvent {
  const _$ChangePenStrokeSizeSelectionEvent(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DrawingPenEvent.changeStrokeSizeSelectionEvent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePenStrokeSizeSelectionEvent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$ChangePenStrokeSizeSelectionEventCopyWith<
          _$ChangePenStrokeSizeSelectionEvent>
      get copyWith => __$$ChangePenStrokeSizeSelectionEventCopyWithImpl<
          _$ChangePenStrokeSizeSelectionEvent>(this, _$identity);

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
    required TResult Function(ChangePenStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePenStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePenStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePenCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PenDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PenDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPenErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPenErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeSelectionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeSizeSelectionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeSizeSelectionEvent != null) {
      return changeStrokeSizeSelectionEvent(this);
    }
    return orElse();
  }
}

abstract class ChangePenStrokeSizeSelectionEvent implements DrawingPenEvent {
  const factory ChangePenStrokeSizeSelectionEvent(final int index) =
      _$ChangePenStrokeSizeSelectionEvent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePenStrokeSizeSelectionEventCopyWith<
          _$ChangePenStrokeSizeSelectionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePenStrokeColorSelectionEventCopyWith<$Res> {
  factory _$$ChangePenStrokeColorSelectionEventCopyWith(
          _$ChangePenStrokeColorSelectionEvent value,
          $Res Function(_$ChangePenStrokeColorSelectionEvent) then) =
      __$$ChangePenStrokeColorSelectionEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$ChangePenStrokeColorSelectionEventCopyWithImpl<$Res>
    extends _$DrawingPenEventCopyWithImpl<$Res>
    implements _$$ChangePenStrokeColorSelectionEventCopyWith<$Res> {
  __$$ChangePenStrokeColorSelectionEventCopyWithImpl(
      _$ChangePenStrokeColorSelectionEvent _value,
      $Res Function(_$ChangePenStrokeColorSelectionEvent) _then)
      : super(_value, (v) => _then(v as _$ChangePenStrokeColorSelectionEvent));

  @override
  _$ChangePenStrokeColorSelectionEvent get _value =>
      super._value as _$ChangePenStrokeColorSelectionEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$ChangePenStrokeColorSelectionEvent(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePenStrokeColorSelectionEvent
    implements ChangePenStrokeColorSelectionEvent {
  const _$ChangePenStrokeColorSelectionEvent(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DrawingPenEvent.changeStrokeColorSelectionEvent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePenStrokeColorSelectionEvent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$ChangePenStrokeColorSelectionEventCopyWith<
          _$ChangePenStrokeColorSelectionEvent>
      get copyWith => __$$ChangePenStrokeColorSelectionEventCopyWithImpl<
          _$ChangePenStrokeColorSelectionEvent>(this, _$identity);

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
    required TResult Function(ChangePenStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePenStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePenStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePenCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PenDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PenDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPenErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPenErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeColorSelectionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return changeStrokeColorSelectionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeColorSelectionEvent != null) {
      return changeStrokeColorSelectionEvent(this);
    }
    return orElse();
  }
}

abstract class ChangePenStrokeColorSelectionEvent implements DrawingPenEvent {
  const factory ChangePenStrokeColorSelectionEvent(final int index) =
      _$ChangePenStrokeColorSelectionEvent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePenStrokeColorSelectionEventCopyWith<
          _$ChangePenStrokeColorSelectionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePenCurrentColorValueEventCopyWith<$Res> {
  factory _$$ChangePenCurrentColorValueEventCopyWith(
          _$ChangePenCurrentColorValueEvent value,
          $Res Function(_$ChangePenCurrentColorValueEvent) then) =
      __$$ChangePenCurrentColorValueEventCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class __$$ChangePenCurrentColorValueEventCopyWithImpl<$Res>
    extends _$DrawingPenEventCopyWithImpl<$Res>
    implements _$$ChangePenCurrentColorValueEventCopyWith<$Res> {
  __$$ChangePenCurrentColorValueEventCopyWithImpl(
      _$ChangePenCurrentColorValueEvent _value,
      $Res Function(_$ChangePenCurrentColorValueEvent) _then)
      : super(_value, (v) => _then(v as _$ChangePenCurrentColorValueEvent));

  @override
  _$ChangePenCurrentColorValueEvent get _value =>
      super._value as _$ChangePenCurrentColorValueEvent;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$ChangePenCurrentColorValueEvent(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ChangePenCurrentColorValueEvent
    implements ChangePenCurrentColorValueEvent {
  const _$ChangePenCurrentColorValueEvent(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'DrawingPenEvent.changePencilCurrentColorValueEvent(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePenCurrentColorValueEvent &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$ChangePenCurrentColorValueEventCopyWith<_$ChangePenCurrentColorValueEvent>
      get copyWith => __$$ChangePenCurrentColorValueEventCopyWithImpl<
          _$ChangePenCurrentColorValueEvent>(this, _$identity);

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
    required TResult Function(ChangePenStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePenStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePenStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePenCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PenDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PenDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPenErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPenErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return changePencilCurrentColorValueEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return changePencilCurrentColorValueEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (changePencilCurrentColorValueEvent != null) {
      return changePencilCurrentColorValueEvent(this);
    }
    return orElse();
  }
}

abstract class ChangePenCurrentColorValueEvent implements DrawingPenEvent {
  const factory ChangePenCurrentColorValueEvent(final Color color) =
      _$ChangePenCurrentColorValueEvent;

  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePenCurrentColorValueEventCopyWith<_$ChangePenCurrentColorValueEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PenDuplicateCurrentColorEventCopyWith<$Res> {
  factory _$$PenDuplicateCurrentColorEventCopyWith(
          _$PenDuplicateCurrentColorEvent value,
          $Res Function(_$PenDuplicateCurrentColorEvent) then) =
      __$$PenDuplicateCurrentColorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PenDuplicateCurrentColorEventCopyWithImpl<$Res>
    extends _$DrawingPenEventCopyWithImpl<$Res>
    implements _$$PenDuplicateCurrentColorEventCopyWith<$Res> {
  __$$PenDuplicateCurrentColorEventCopyWithImpl(
      _$PenDuplicateCurrentColorEvent _value,
      $Res Function(_$PenDuplicateCurrentColorEvent) _then)
      : super(_value, (v) => _then(v as _$PenDuplicateCurrentColorEvent));

  @override
  _$PenDuplicateCurrentColorEvent get _value =>
      super._value as _$PenDuplicateCurrentColorEvent;
}

/// @nodoc

class _$PenDuplicateCurrentColorEvent implements PenDuplicateCurrentColorEvent {
  const _$PenDuplicateCurrentColorEvent();

  @override
  String toString() {
    return 'DrawingPenEvent.duplicateCurrentColorEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenDuplicateCurrentColorEvent);
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
    required TResult Function(ChangePenStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePenStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePenStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePenCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PenDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PenDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPenErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPenErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return duplicateCurrentColorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return duplicateCurrentColorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (duplicateCurrentColorEvent != null) {
      return duplicateCurrentColorEvent(this);
    }
    return orElse();
  }
}

abstract class PenDuplicateCurrentColorEvent implements DrawingPenEvent {
  const factory PenDuplicateCurrentColorEvent() =
      _$PenDuplicateCurrentColorEvent;
}

/// @nodoc
abstract class _$$PenDeleteCurrentColorEventCopyWith<$Res> {
  factory _$$PenDeleteCurrentColorEventCopyWith(
          _$PenDeleteCurrentColorEvent value,
          $Res Function(_$PenDeleteCurrentColorEvent) then) =
      __$$PenDeleteCurrentColorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PenDeleteCurrentColorEventCopyWithImpl<$Res>
    extends _$DrawingPenEventCopyWithImpl<$Res>
    implements _$$PenDeleteCurrentColorEventCopyWith<$Res> {
  __$$PenDeleteCurrentColorEventCopyWithImpl(
      _$PenDeleteCurrentColorEvent _value,
      $Res Function(_$PenDeleteCurrentColorEvent) _then)
      : super(_value, (v) => _then(v as _$PenDeleteCurrentColorEvent));

  @override
  _$PenDeleteCurrentColorEvent get _value =>
      super._value as _$PenDeleteCurrentColorEvent;
}

/// @nodoc

class _$PenDeleteCurrentColorEvent implements PenDeleteCurrentColorEvent {
  const _$PenDeleteCurrentColorEvent();

  @override
  String toString() {
    return 'DrawingPenEvent.deleteCurrentColorEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenDeleteCurrentColorEvent);
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
    required TResult Function(ChangePenStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePenStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePenStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePenCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PenDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PenDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPenErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPenErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return deleteCurrentColorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return deleteCurrentColorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (deleteCurrentColorEvent != null) {
      return deleteCurrentColorEvent(this);
    }
    return orElse();
  }
}

abstract class PenDeleteCurrentColorEvent implements DrawingPenEvent {
  const factory PenDeleteCurrentColorEvent() = _$PenDeleteCurrentColorEvent;
}

/// @nodoc
abstract class _$$ShowPenErrorSnackbarEventCopyWith<$Res> {
  factory _$$ShowPenErrorSnackbarEventCopyWith(
          _$ShowPenErrorSnackbarEvent value,
          $Res Function(_$ShowPenErrorSnackbarEvent) then) =
      __$$ShowPenErrorSnackbarEventCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ShowPenErrorSnackbarEventCopyWithImpl<$Res>
    extends _$DrawingPenEventCopyWithImpl<$Res>
    implements _$$ShowPenErrorSnackbarEventCopyWith<$Res> {
  __$$ShowPenErrorSnackbarEventCopyWithImpl(_$ShowPenErrorSnackbarEvent _value,
      $Res Function(_$ShowPenErrorSnackbarEvent) _then)
      : super(_value, (v) => _then(v as _$ShowPenErrorSnackbarEvent));

  @override
  _$ShowPenErrorSnackbarEvent get _value =>
      super._value as _$ShowPenErrorSnackbarEvent;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ShowPenErrorSnackbarEvent(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowPenErrorSnackbarEvent implements ShowPenErrorSnackbarEvent {
  const _$ShowPenErrorSnackbarEvent(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DrawingPenEvent.showErrorSnackbarEvent(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPenErrorSnackbarEvent &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ShowPenErrorSnackbarEventCopyWith<_$ShowPenErrorSnackbarEvent>
      get copyWith => __$$ShowPenErrorSnackbarEventCopyWithImpl<
          _$ShowPenErrorSnackbarEvent>(this, _$identity);

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
    required TResult Function(ChangePenStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePenStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePenStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePenCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PenDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PenDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPenErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPenErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return showErrorSnackbarEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return showErrorSnackbarEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (showErrorSnackbarEvent != null) {
      return showErrorSnackbarEvent(this);
    }
    return orElse();
  }
}

abstract class ShowPenErrorSnackbarEvent implements DrawingPenEvent {
  const factory ShowPenErrorSnackbarEvent(final String message) =
      _$ShowPenErrorSnackbarEvent;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ShowPenErrorSnackbarEventCopyWith<_$ShowPenErrorSnackbarEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DismissPenErrorSnackbarEventCopyWith<$Res> {
  factory _$$DismissPenErrorSnackbarEventCopyWith(
          _$DismissPenErrorSnackbarEvent value,
          $Res Function(_$DismissPenErrorSnackbarEvent) then) =
      __$$DismissPenErrorSnackbarEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DismissPenErrorSnackbarEventCopyWithImpl<$Res>
    extends _$DrawingPenEventCopyWithImpl<$Res>
    implements _$$DismissPenErrorSnackbarEventCopyWith<$Res> {
  __$$DismissPenErrorSnackbarEventCopyWithImpl(
      _$DismissPenErrorSnackbarEvent _value,
      $Res Function(_$DismissPenErrorSnackbarEvent) _then)
      : super(_value, (v) => _then(v as _$DismissPenErrorSnackbarEvent));

  @override
  _$DismissPenErrorSnackbarEvent get _value =>
      super._value as _$DismissPenErrorSnackbarEvent;
}

/// @nodoc

class _$DismissPenErrorSnackbarEvent implements DismissPenErrorSnackbarEvent {
  const _$DismissPenErrorSnackbarEvent();

  @override
  String toString() {
    return 'DrawingPenEvent.dismissErrorSnackbarEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DismissPenErrorSnackbarEvent);
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
    required TResult Function(ChangePenStrokeSizeValueEvent value)
        changeStrokeSizeValueEvent,
    required TResult Function(ChangePenStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePenStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePenCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PenDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PenDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
    required TResult Function(ShowPenErrorSnackbarEvent value)
        showErrorSnackbarEvent,
    required TResult Function(DismissPenErrorSnackbarEvent value)
        dismissErrorSnackbarEvent,
  }) {
    return dismissErrorSnackbarEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
  }) {
    return dismissErrorSnackbarEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePenStrokeSizeValueEvent value)?
        changeStrokeSizeValueEvent,
    TResult Function(ChangePenStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePenStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePenCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PenDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PenDeleteCurrentColorEvent value)? deleteCurrentColorEvent,
    TResult Function(ShowPenErrorSnackbarEvent value)? showErrorSnackbarEvent,
    TResult Function(DismissPenErrorSnackbarEvent value)?
        dismissErrorSnackbarEvent,
    required TResult orElse(),
  }) {
    if (dismissErrorSnackbarEvent != null) {
      return dismissErrorSnackbarEvent(this);
    }
    return orElse();
  }
}

abstract class DismissPenErrorSnackbarEvent implements DrawingPenEvent {
  const factory DismissPenErrorSnackbarEvent() = _$DismissPenErrorSnackbarEvent;
}
