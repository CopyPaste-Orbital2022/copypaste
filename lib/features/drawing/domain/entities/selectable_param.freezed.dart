// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selectable_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectableParam<T> {
  List<T> get items => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  int get maxLimit => throw _privateConstructorUsedError;
  int get minLimit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectableParamCopyWith<T, SelectableParam<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableParamCopyWith<T, $Res> {
  factory $SelectableParamCopyWith(
          SelectableParam<T> value, $Res Function(SelectableParam<T>) then) =
      _$SelectableParamCopyWithImpl<T, $Res>;
  $Res call({List<T> items, int index, int maxLimit, int minLimit});
}

/// @nodoc
class _$SelectableParamCopyWithImpl<T, $Res>
    implements $SelectableParamCopyWith<T, $Res> {
  _$SelectableParamCopyWithImpl(this._value, this._then);

  final SelectableParam<T> _value;
  // ignore: unused_field
  final $Res Function(SelectableParam<T>) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? index = freezed,
    Object? maxLimit = freezed,
    Object? minLimit = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      maxLimit: maxLimit == freezed
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as int,
      minLimit: minLimit == freezed
          ? _value.minLimit
          : minLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SelectableParamCopyWith<T, $Res>
    implements $SelectableParamCopyWith<T, $Res> {
  factory _$$_SelectableParamCopyWith(_$_SelectableParam<T> value,
          $Res Function(_$_SelectableParam<T>) then) =
      __$$_SelectableParamCopyWithImpl<T, $Res>;
  @override
  $Res call({List<T> items, int index, int maxLimit, int minLimit});
}

/// @nodoc
class __$$_SelectableParamCopyWithImpl<T, $Res>
    extends _$SelectableParamCopyWithImpl<T, $Res>
    implements _$$_SelectableParamCopyWith<T, $Res> {
  __$$_SelectableParamCopyWithImpl(
      _$_SelectableParam<T> _value, $Res Function(_$_SelectableParam<T>) _then)
      : super(_value, (v) => _then(v as _$_SelectableParam<T>));

  @override
  _$_SelectableParam<T> get _value => super._value as _$_SelectableParam<T>;

  @override
  $Res call({
    Object? items = freezed,
    Object? index = freezed,
    Object? maxLimit = freezed,
    Object? minLimit = freezed,
  }) {
    return _then(_$_SelectableParam<T>(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      maxLimit: maxLimit == freezed
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as int,
      minLimit: minLimit == freezed
          ? _value.minLimit
          : minLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectableParam<T> implements _SelectableParam<T> {
  const _$_SelectableParam(
      {required final List<T> items,
      required this.index,
      required this.maxLimit,
      required this.minLimit})
      : _items = items;

  final List<T> _items;
  @override
  List<T> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int index;
  @override
  final int maxLimit;
  @override
  final int minLimit;

  @override
  String toString() {
    return 'SelectableParam<$T>(items: $items, index: $index, maxLimit: $maxLimit, minLimit: $minLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectableParam<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.maxLimit, maxLimit) &&
            const DeepCollectionEquality().equals(other.minLimit, minLimit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(maxLimit),
      const DeepCollectionEquality().hash(minLimit));

  @JsonKey(ignore: true)
  @override
  _$$_SelectableParamCopyWith<T, _$_SelectableParam<T>> get copyWith =>
      __$$_SelectableParamCopyWithImpl<T, _$_SelectableParam<T>>(
          this, _$identity);
}

abstract class _SelectableParam<T> implements SelectableParam<T> {
  const factory _SelectableParam(
      {required final List<T> items,
      required final int index,
      required final int maxLimit,
      required final int minLimit}) = _$_SelectableParam<T>;

  @override
  List<T> get items => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  int get maxLimit => throw _privateConstructorUsedError;
  @override
  int get minLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SelectableParamCopyWith<T, _$_SelectableParam<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
