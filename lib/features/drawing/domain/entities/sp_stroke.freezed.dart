// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sp_stroke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SPStroke {
  double get size => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  List<SPPoint> get points => throw _privateConstructorUsedError;
  bool get isComplete => throw _privateConstructorUsedError;
  List<Point>? get cachedBorderPoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SPStrokeCopyWith<SPStroke> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SPStrokeCopyWith<$Res> {
  factory $SPStrokeCopyWith(SPStroke value, $Res Function(SPStroke) then) =
      _$SPStrokeCopyWithImpl<$Res>;
  $Res call(
      {double size,
      Color color,
      List<SPPoint> points,
      bool isComplete,
      List<Point>? cachedBorderPoints});
}

/// @nodoc
class _$SPStrokeCopyWithImpl<$Res> implements $SPStrokeCopyWith<$Res> {
  _$SPStrokeCopyWithImpl(this._value, this._then);

  final SPStroke _value;
  // ignore: unused_field
  final $Res Function(SPStroke) _then;

  @override
  $Res call({
    Object? size = freezed,
    Object? color = freezed,
    Object? points = freezed,
    Object? isComplete = freezed,
    Object? cachedBorderPoints = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<SPPoint>,
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      cachedBorderPoints: cachedBorderPoints == freezed
          ? _value.cachedBorderPoints
          : cachedBorderPoints // ignore: cast_nullable_to_non_nullable
              as List<Point>?,
    ));
  }
}

/// @nodoc
abstract class _$$_SPStrokeCopyWith<$Res> implements $SPStrokeCopyWith<$Res> {
  factory _$$_SPStrokeCopyWith(
          _$_SPStroke value, $Res Function(_$_SPStroke) then) =
      __$$_SPStrokeCopyWithImpl<$Res>;
  @override
  $Res call(
      {double size,
      Color color,
      List<SPPoint> points,
      bool isComplete,
      List<Point>? cachedBorderPoints});
}

/// @nodoc
class __$$_SPStrokeCopyWithImpl<$Res> extends _$SPStrokeCopyWithImpl<$Res>
    implements _$$_SPStrokeCopyWith<$Res> {
  __$$_SPStrokeCopyWithImpl(
      _$_SPStroke _value, $Res Function(_$_SPStroke) _then)
      : super(_value, (v) => _then(v as _$_SPStroke));

  @override
  _$_SPStroke get _value => super._value as _$_SPStroke;

  @override
  $Res call({
    Object? size = freezed,
    Object? color = freezed,
    Object? points = freezed,
    Object? isComplete = freezed,
    Object? cachedBorderPoints = freezed,
  }) {
    return _then(_$_SPStroke(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      points: points == freezed
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<SPPoint>,
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      cachedBorderPoints: cachedBorderPoints == freezed
          ? _value._cachedBorderPoints
          : cachedBorderPoints // ignore: cast_nullable_to_non_nullable
              as List<Point>?,
    ));
  }
}

/// @nodoc

class _$_SPStroke implements _SPStroke {
  const _$_SPStroke(
      {required this.size,
      required this.color,
      final List<SPPoint> points = const [],
      this.isComplete = false,
      final List<Point>? cachedBorderPoints})
      : _points = points,
        _cachedBorderPoints = cachedBorderPoints;

  @override
  final double size;
  @override
  final Color color;
  final List<SPPoint> _points;
  @override
  @JsonKey()
  List<SPPoint> get points {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  @JsonKey()
  final bool isComplete;
  final List<Point>? _cachedBorderPoints;
  @override
  List<Point>? get cachedBorderPoints {
    final value = _cachedBorderPoints;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SPStroke(size: $size, color: $color, points: $points, isComplete: $isComplete, cachedBorderPoints: $cachedBorderPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SPStroke &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            const DeepCollectionEquality()
                .equals(other.isComplete, isComplete) &&
            const DeepCollectionEquality()
                .equals(other._cachedBorderPoints, _cachedBorderPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(_points),
      const DeepCollectionEquality().hash(isComplete),
      const DeepCollectionEquality().hash(_cachedBorderPoints));

  @JsonKey(ignore: true)
  @override
  _$$_SPStrokeCopyWith<_$_SPStroke> get copyWith =>
      __$$_SPStrokeCopyWithImpl<_$_SPStroke>(this, _$identity);
}

abstract class _SPStroke implements SPStroke {
  const factory _SPStroke(
      {required final double size,
      required final Color color,
      final List<SPPoint> points,
      final bool isComplete,
      final List<Point>? cachedBorderPoints}) = _$_SPStroke;

  @override
  double get size => throw _privateConstructorUsedError;
  @override
  Color get color => throw _privateConstructorUsedError;
  @override
  List<SPPoint> get points => throw _privateConstructorUsedError;
  @override
  bool get isComplete => throw _privateConstructorUsedError;
  @override
  List<Point>? get cachedBorderPoints => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SPStrokeCopyWith<_$_SPStroke> get copyWith =>
      throw _privateConstructorUsedError;
}
