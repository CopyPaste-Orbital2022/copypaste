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

  @JsonKey(ignore: true)
  $DrawingPencilStateCopyWith<DrawingPencilState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingPencilStateCopyWith<$Res> {
  factory $DrawingPencilStateCopyWith(
          DrawingPencilState value, $Res Function(DrawingPencilState) then) =
      _$DrawingPencilStateCopyWithImpl<$Res>;
  $Res call({SelectableItems<Color> colors, SelectableItems<double> widths});

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
  $Res call({SelectableItems<Color> colors, SelectableItems<double> widths});

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
    ));
  }
}

/// @nodoc

class _$_DrawingPencilState implements _DrawingPencilState {
  const _$_DrawingPencilState({required this.colors, required this.widths});

  @override
  final SelectableItems<Color> colors;
  @override
  final SelectableItems<double> widths;

  @override
  String toString() {
    return 'DrawingPencilState(colors: $colors, widths: $widths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingPencilState &&
            const DeepCollectionEquality().equals(other.colors, colors) &&
            const DeepCollectionEquality().equals(other.widths, widths));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(widths));

  @JsonKey(ignore: true)
  @override
  _$$_DrawingPencilStateCopyWith<_$_DrawingPencilState> get copyWith =>
      __$$_DrawingPencilStateCopyWithImpl<_$_DrawingPencilState>(
          this, _$identity);
}

abstract class _DrawingPencilState implements DrawingPencilState {
  const factory _DrawingPencilState(
      {required final SelectableItems<Color> colors,
      required final SelectableItems<double> widths}) = _$_DrawingPencilState;

  @override
  SelectableItems<Color> get colors => throw _privateConstructorUsedError;
  @override
  SelectableItems<double> get widths => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingPencilStateCopyWith<_$_DrawingPencilState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawingPencilEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) modifyStrokeSizeEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModifyStrokeSizeEvent value)
        modifyStrokeSizeEvent,
    required TResult Function(ChangeStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
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
abstract class _$$ModifyStrokeSizeEventCopyWith<$Res> {
  factory _$$ModifyStrokeSizeEventCopyWith(_$ModifyStrokeSizeEvent value,
          $Res Function(_$ModifyStrokeSizeEvent) then) =
      __$$ModifyStrokeSizeEventCopyWithImpl<$Res>;
  $Res call({double newSize});
}

/// @nodoc
class __$$ModifyStrokeSizeEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$ModifyStrokeSizeEventCopyWith<$Res> {
  __$$ModifyStrokeSizeEventCopyWithImpl(_$ModifyStrokeSizeEvent _value,
      $Res Function(_$ModifyStrokeSizeEvent) _then)
      : super(_value, (v) => _then(v as _$ModifyStrokeSizeEvent));

  @override
  _$ModifyStrokeSizeEvent get _value => super._value as _$ModifyStrokeSizeEvent;

  @override
  $Res call({
    Object? newSize = freezed,
  }) {
    return _then(_$ModifyStrokeSizeEvent(
      newSize == freezed
          ? _value.newSize
          : newSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ModifyStrokeSizeEvent implements ModifyStrokeSizeEvent {
  const _$ModifyStrokeSizeEvent(this.newSize);

  @override
  final double newSize;

  @override
  String toString() {
    return 'DrawingPencilEvent.modifyStrokeSizeEvent(newSize: $newSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifyStrokeSizeEvent &&
            const DeepCollectionEquality().equals(other.newSize, newSize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newSize));

  @JsonKey(ignore: true)
  @override
  _$$ModifyStrokeSizeEventCopyWith<_$ModifyStrokeSizeEvent> get copyWith =>
      __$$ModifyStrokeSizeEventCopyWithImpl<_$ModifyStrokeSizeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) modifyStrokeSizeEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
  }) {
    return modifyStrokeSizeEvent(newSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
  }) {
    return modifyStrokeSizeEvent?.call(newSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
    required TResult orElse(),
  }) {
    if (modifyStrokeSizeEvent != null) {
      return modifyStrokeSizeEvent(newSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModifyStrokeSizeEvent value)
        modifyStrokeSizeEvent,
    required TResult Function(ChangeStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
  }) {
    return modifyStrokeSizeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
  }) {
    return modifyStrokeSizeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    required TResult orElse(),
  }) {
    if (modifyStrokeSizeEvent != null) {
      return modifyStrokeSizeEvent(this);
    }
    return orElse();
  }
}

abstract class ModifyStrokeSizeEvent implements DrawingPencilEvent {
  const factory ModifyStrokeSizeEvent(final double newSize) =
      _$ModifyStrokeSizeEvent;

  double get newSize => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ModifyStrokeSizeEventCopyWith<_$ModifyStrokeSizeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeStrokeSizeSelectionEventCopyWith<$Res> {
  factory _$$ChangeStrokeSizeSelectionEventCopyWith(
          _$ChangeStrokeSizeSelectionEvent value,
          $Res Function(_$ChangeStrokeSizeSelectionEvent) then) =
      __$$ChangeStrokeSizeSelectionEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$ChangeStrokeSizeSelectionEventCopyWithImpl<$Res>
    extends _$DrawingPencilEventCopyWithImpl<$Res>
    implements _$$ChangeStrokeSizeSelectionEventCopyWith<$Res> {
  __$$ChangeStrokeSizeSelectionEventCopyWithImpl(
      _$ChangeStrokeSizeSelectionEvent _value,
      $Res Function(_$ChangeStrokeSizeSelectionEvent) _then)
      : super(_value, (v) => _then(v as _$ChangeStrokeSizeSelectionEvent));

  @override
  _$ChangeStrokeSizeSelectionEvent get _value =>
      super._value as _$ChangeStrokeSizeSelectionEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$ChangeStrokeSizeSelectionEvent(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeStrokeSizeSelectionEvent
    implements ChangeStrokeSizeSelectionEvent {
  const _$ChangeStrokeSizeSelectionEvent(this.index);

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
            other is _$ChangeStrokeSizeSelectionEvent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$ChangeStrokeSizeSelectionEventCopyWith<_$ChangeStrokeSizeSelectionEvent>
      get copyWith => __$$ChangeStrokeSizeSelectionEventCopyWithImpl<
          _$ChangeStrokeSizeSelectionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newSize) modifyStrokeSizeEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
  }) {
    return changeStrokeSizeSelectionEvent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
  }) {
    return changeStrokeSizeSelectionEvent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
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
    required TResult Function(ModifyStrokeSizeEvent value)
        modifyStrokeSizeEvent,
    required TResult Function(ChangeStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
  }) {
    return changeStrokeSizeSelectionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
  }) {
    return changeStrokeSizeSelectionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
    required TResult orElse(),
  }) {
    if (changeStrokeSizeSelectionEvent != null) {
      return changeStrokeSizeSelectionEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeStrokeSizeSelectionEvent implements DrawingPencilEvent {
  const factory ChangeStrokeSizeSelectionEvent(final int index) =
      _$ChangeStrokeSizeSelectionEvent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeStrokeSizeSelectionEventCopyWith<_$ChangeStrokeSizeSelectionEvent>
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
    required TResult Function(double newSize) modifyStrokeSizeEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
  }) {
    return changeStrokeColorSelectionEvent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
  }) {
    return changeStrokeColorSelectionEvent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
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
    required TResult Function(ModifyStrokeSizeEvent value)
        modifyStrokeSizeEvent,
    required TResult Function(ChangeStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
  }) {
    return changeStrokeColorSelectionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
  }) {
    return changeStrokeColorSelectionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
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
    required TResult Function(double newSize) modifyStrokeSizeEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
  }) {
    return changePencilCurrentColorValueEvent(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
  }) {
    return changePencilCurrentColorValueEvent?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
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
    required TResult Function(ModifyStrokeSizeEvent value)
        modifyStrokeSizeEvent,
    required TResult Function(ChangeStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
  }) {
    return changePencilCurrentColorValueEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
  }) {
    return changePencilCurrentColorValueEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
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
    required TResult Function(double newSize) modifyStrokeSizeEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
  }) {
    return duplicateCurrentColorEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
  }) {
    return duplicateCurrentColorEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
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
    required TResult Function(ModifyStrokeSizeEvent value)
        modifyStrokeSizeEvent,
    required TResult Function(ChangeStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
  }) {
    return duplicateCurrentColorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
  }) {
    return duplicateCurrentColorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
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
    required TResult Function(double newSize) modifyStrokeSizeEvent,
    required TResult Function(int index) changeStrokeSizeSelectionEvent,
    required TResult Function(int index) changeStrokeColorSelectionEvent,
    required TResult Function(Color color) changePencilCurrentColorValueEvent,
    required TResult Function() duplicateCurrentColorEvent,
    required TResult Function() deleteCurrentColorEvent,
  }) {
    return deleteCurrentColorEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
  }) {
    return deleteCurrentColorEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newSize)? modifyStrokeSizeEvent,
    TResult Function(int index)? changeStrokeSizeSelectionEvent,
    TResult Function(int index)? changeStrokeColorSelectionEvent,
    TResult Function(Color color)? changePencilCurrentColorValueEvent,
    TResult Function()? duplicateCurrentColorEvent,
    TResult Function()? deleteCurrentColorEvent,
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
    required TResult Function(ModifyStrokeSizeEvent value)
        modifyStrokeSizeEvent,
    required TResult Function(ChangeStrokeSizeSelectionEvent value)
        changeStrokeSizeSelectionEvent,
    required TResult Function(ChangePencilStrokeColorSelectionEvent value)
        changeStrokeColorSelectionEvent,
    required TResult Function(ChangePencilCurrentColorValueEvent value)
        changePencilCurrentColorValueEvent,
    required TResult Function(PencilDuplicateCurrentColorEvent value)
        duplicateCurrentColorEvent,
    required TResult Function(PencilDeleteCurrentColorEvent value)
        deleteCurrentColorEvent,
  }) {
    return deleteCurrentColorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
  }) {
    return deleteCurrentColorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModifyStrokeSizeEvent value)? modifyStrokeSizeEvent,
    TResult Function(ChangeStrokeSizeSelectionEvent value)?
        changeStrokeSizeSelectionEvent,
    TResult Function(ChangePencilStrokeColorSelectionEvent value)?
        changeStrokeColorSelectionEvent,
    TResult Function(ChangePencilCurrentColorValueEvent value)?
        changePencilCurrentColorValueEvent,
    TResult Function(PencilDuplicateCurrentColorEvent value)?
        duplicateCurrentColorEvent,
    TResult Function(PencilDeleteCurrentColorEvent value)?
        deleteCurrentColorEvent,
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
