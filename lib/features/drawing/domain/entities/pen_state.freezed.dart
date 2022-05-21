// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PenState {
  int get currentColorIdx => throw _privateConstructorUsedError;
  List<Color> get colors => throw _privateConstructorUsedError;
  bool get useStylus => throw _privateConstructorUsedError;
  int get currentWidthIdx => throw _privateConstructorUsedError;
  List<double> get widths => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PenStateCopyWith<PenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenStateCopyWith<$Res> {
  factory $PenStateCopyWith(PenState value, $Res Function(PenState) then) =
      _$PenStateCopyWithImpl<$Res>;
  $Res call(
      {int currentColorIdx,
      List<Color> colors,
      bool useStylus,
      int currentWidthIdx,
      List<double> widths});
}

/// @nodoc
class _$PenStateCopyWithImpl<$Res> implements $PenStateCopyWith<$Res> {
  _$PenStateCopyWithImpl(this._value, this._then);

  final PenState _value;
  // ignore: unused_field
  final $Res Function(PenState) _then;

  @override
  $Res call({
    Object? currentColorIdx = freezed,
    Object? colors = freezed,
    Object? useStylus = freezed,
    Object? currentWidthIdx = freezed,
    Object? widths = freezed,
  }) {
    return _then(_value.copyWith(
      currentColorIdx: currentColorIdx == freezed
          ? _value.currentColorIdx
          : currentColorIdx // ignore: cast_nullable_to_non_nullable
              as int,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      useStylus: useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
              as bool,
      currentWidthIdx: currentWidthIdx == freezed
          ? _value.currentWidthIdx
          : currentWidthIdx // ignore: cast_nullable_to_non_nullable
              as int,
      widths: widths == freezed
          ? _value.widths
          : widths // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$$_PenStateCopyWith<$Res> implements $PenStateCopyWith<$Res> {
  factory _$$_PenStateCopyWith(
          _$_PenState value, $Res Function(_$_PenState) then) =
      __$$_PenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentColorIdx,
      List<Color> colors,
      bool useStylus,
      int currentWidthIdx,
      List<double> widths});
}

/// @nodoc
class __$$_PenStateCopyWithImpl<$Res> extends _$PenStateCopyWithImpl<$Res>
    implements _$$_PenStateCopyWith<$Res> {
  __$$_PenStateCopyWithImpl(
      _$_PenState _value, $Res Function(_$_PenState) _then)
      : super(_value, (v) => _then(v as _$_PenState));

  @override
  _$_PenState get _value => super._value as _$_PenState;

  @override
  $Res call({
    Object? currentColorIdx = freezed,
    Object? colors = freezed,
    Object? useStylus = freezed,
    Object? currentWidthIdx = freezed,
    Object? widths = freezed,
  }) {
    return _then(_$_PenState(
      currentColorIdx: currentColorIdx == freezed
          ? _value.currentColorIdx
          : currentColorIdx // ignore: cast_nullable_to_non_nullable
              as int,
      colors: colors == freezed
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      useStylus: useStylus == freezed
          ? _value.useStylus
          : useStylus // ignore: cast_nullable_to_non_nullable
              as bool,
      currentWidthIdx: currentWidthIdx == freezed
          ? _value.currentWidthIdx
          : currentWidthIdx // ignore: cast_nullable_to_non_nullable
              as int,
      widths: widths == freezed
          ? _value._widths
          : widths // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_PenState implements _PenState {
  const _$_PenState(
      {required this.currentColorIdx,
      required final List<Color> colors,
      required this.useStylus,
      required this.currentWidthIdx,
      required final List<double> widths})
      : _colors = colors,
        _widths = widths;

  @override
  final int currentColorIdx;
  final List<Color> _colors;
  @override
  List<Color> get colors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  final bool useStylus;
  @override
  final int currentWidthIdx;
  final List<double> _widths;
  @override
  List<double> get widths {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widths);
  }

  @override
  String toString() {
    return 'PenState(currentColorIdx: $currentColorIdx, colors: $colors, useStylus: $useStylus, currentWidthIdx: $currentWidthIdx, widths: $widths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PenState &&
            const DeepCollectionEquality()
                .equals(other.currentColorIdx, currentColorIdx) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other.useStylus, useStylus) &&
            const DeepCollectionEquality()
                .equals(other.currentWidthIdx, currentWidthIdx) &&
            const DeepCollectionEquality().equals(other._widths, _widths));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentColorIdx),
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(useStylus),
      const DeepCollectionEquality().hash(currentWidthIdx),
      const DeepCollectionEquality().hash(_widths));

  @JsonKey(ignore: true)
  @override
  _$$_PenStateCopyWith<_$_PenState> get copyWith =>
      __$$_PenStateCopyWithImpl<_$_PenState>(this, _$identity);
}

abstract class _PenState implements PenState {
  const factory _PenState(
      {required final int currentColorIdx,
      required final List<Color> colors,
      required final bool useStylus,
      required final int currentWidthIdx,
      required final List<double> widths}) = _$_PenState;

  @override
  int get currentColorIdx => throw _privateConstructorUsedError;
  @override
  List<Color> get colors => throw _privateConstructorUsedError;
  @override
  bool get useStylus => throw _privateConstructorUsedError;
  @override
  int get currentWidthIdx => throw _privateConstructorUsedError;
  @override
  List<double> get widths => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PenStateCopyWith<_$_PenState> get copyWith =>
      throw _privateConstructorUsedError;
}
