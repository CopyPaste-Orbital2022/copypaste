// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'eraser_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EraserState {
  SelectableItems<double> get eraserSizes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EraserStateCopyWith<EraserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EraserStateCopyWith<$Res> {
  factory $EraserStateCopyWith(
          EraserState value, $Res Function(EraserState) then) =
      _$EraserStateCopyWithImpl<$Res>;
  $Res call({SelectableItems<double> eraserSizes});

  $SelectableItemsCopyWith<double, $Res> get eraserSizes;
}

/// @nodoc
class _$EraserStateCopyWithImpl<$Res> implements $EraserStateCopyWith<$Res> {
  _$EraserStateCopyWithImpl(this._value, this._then);

  final EraserState _value;
  // ignore: unused_field
  final $Res Function(EraserState) _then;

  @override
  $Res call({
    Object? eraserSizes = freezed,
  }) {
    return _then(_value.copyWith(
      eraserSizes: eraserSizes == freezed
          ? _value.eraserSizes
          : eraserSizes // ignore: cast_nullable_to_non_nullable
              as SelectableItems<double>,
    ));
  }

  @override
  $SelectableItemsCopyWith<double, $Res> get eraserSizes {
    return $SelectableItemsCopyWith<double, $Res>(_value.eraserSizes, (value) {
      return _then(_value.copyWith(eraserSizes: value));
    });
  }
}

/// @nodoc
abstract class _$$_EraserStateCopyWith<$Res>
    implements $EraserStateCopyWith<$Res> {
  factory _$$_EraserStateCopyWith(
          _$_EraserState value, $Res Function(_$_EraserState) then) =
      __$$_EraserStateCopyWithImpl<$Res>;
  @override
  $Res call({SelectableItems<double> eraserSizes});

  @override
  $SelectableItemsCopyWith<double, $Res> get eraserSizes;
}

/// @nodoc
class __$$_EraserStateCopyWithImpl<$Res> extends _$EraserStateCopyWithImpl<$Res>
    implements _$$_EraserStateCopyWith<$Res> {
  __$$_EraserStateCopyWithImpl(
      _$_EraserState _value, $Res Function(_$_EraserState) _then)
      : super(_value, (v) => _then(v as _$_EraserState));

  @override
  _$_EraserState get _value => super._value as _$_EraserState;

  @override
  $Res call({
    Object? eraserSizes = freezed,
  }) {
    return _then(_$_EraserState(
      eraserSizes: eraserSizes == freezed
          ? _value.eraserSizes
          : eraserSizes // ignore: cast_nullable_to_non_nullable
              as SelectableItems<double>,
    ));
  }
}

/// @nodoc

class _$_EraserState implements _EraserState {
  const _$_EraserState({required this.eraserSizes});

  @override
  final SelectableItems<double> eraserSizes;

  @override
  String toString() {
    return 'EraserState(eraserSizes: $eraserSizes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EraserState &&
            const DeepCollectionEquality()
                .equals(other.eraserSizes, eraserSizes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(eraserSizes));

  @JsonKey(ignore: true)
  @override
  _$$_EraserStateCopyWith<_$_EraserState> get copyWith =>
      __$$_EraserStateCopyWithImpl<_$_EraserState>(this, _$identity);
}

abstract class _EraserState implements EraserState {
  const factory _EraserState(
      {required final SelectableItems<double> eraserSizes}) = _$_EraserState;

  @override
  SelectableItems<double> get eraserSizes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EraserStateCopyWith<_$_EraserState> get copyWith =>
      throw _privateConstructorUsedError;
}
