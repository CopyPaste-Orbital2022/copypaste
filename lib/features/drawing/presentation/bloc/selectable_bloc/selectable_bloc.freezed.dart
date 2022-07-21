// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selectable_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectableState<T> {
  SelectableItems<T> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectableStateCopyWith<T, SelectableState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableStateCopyWith<T, $Res> {
  factory $SelectableStateCopyWith(
          SelectableState<T> value, $Res Function(SelectableState<T>) then) =
      _$SelectableStateCopyWithImpl<T, $Res>;
  $Res call({SelectableItems<T> items});

  $SelectableItemsCopyWith<T, $Res> get items;
}

/// @nodoc
class _$SelectableStateCopyWithImpl<T, $Res>
    implements $SelectableStateCopyWith<T, $Res> {
  _$SelectableStateCopyWithImpl(this._value, this._then);

  final SelectableState<T> _value;
  // ignore: unused_field
  final $Res Function(SelectableState<T>) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as SelectableItems<T>,
    ));
  }

  @override
  $SelectableItemsCopyWith<T, $Res> get items {
    return $SelectableItemsCopyWith<T, $Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value));
    });
  }
}

/// @nodoc
abstract class _$$_SelectableStateCopyWith<T, $Res>
    implements $SelectableStateCopyWith<T, $Res> {
  factory _$$_SelectableStateCopyWith(_$_SelectableState<T> value,
          $Res Function(_$_SelectableState<T>) then) =
      __$$_SelectableStateCopyWithImpl<T, $Res>;
  @override
  $Res call({SelectableItems<T> items});

  @override
  $SelectableItemsCopyWith<T, $Res> get items;
}

/// @nodoc
class __$$_SelectableStateCopyWithImpl<T, $Res>
    extends _$SelectableStateCopyWithImpl<T, $Res>
    implements _$$_SelectableStateCopyWith<T, $Res> {
  __$$_SelectableStateCopyWithImpl(
      _$_SelectableState<T> _value, $Res Function(_$_SelectableState<T>) _then)
      : super(_value, (v) => _then(v as _$_SelectableState<T>));

  @override
  _$_SelectableState<T> get _value => super._value as _$_SelectableState<T>;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_SelectableState<T>(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as SelectableItems<T>,
    ));
  }
}

/// @nodoc

class _$_SelectableState<T> implements _SelectableState<T> {
  const _$_SelectableState({required this.items});

  @override
  final SelectableItems<T> items;

  @override
  String toString() {
    return 'SelectableState<$T>(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectableState<T> &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$$_SelectableStateCopyWith<T, _$_SelectableState<T>> get copyWith =>
      __$$_SelectableStateCopyWithImpl<T, _$_SelectableState<T>>(
          this, _$identity);
}

abstract class _SelectableState<T> implements SelectableState<T> {
  const factory _SelectableState({required final SelectableItems<T> items}) =
      _$_SelectableState<T>;

  @override
  SelectableItems<T> get items;
  @override
  @JsonKey(ignore: true)
  _$$_SelectableStateCopyWith<T, _$_SelectableState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectableEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T item) select,
    required TResult Function(int index) selectAt,
    required TResult Function(int index, T value) modifyAt,
    required TResult Function(T item) remove,
    required TResult Function(int index) removeAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableEventSelect<T> value) select,
    required TResult Function(SelectableEventSelectAt<T> value) selectAt,
    required TResult Function(SelectableEventModify<T> value) modifyAt,
    required TResult Function(SelectableEventRemove<T> value) remove,
    required TResult Function(SelectableEventRemoveAt<T> value) removeAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableEventCopyWith<T, $Res> {
  factory $SelectableEventCopyWith(
          SelectableEvent<T> value, $Res Function(SelectableEvent<T>) then) =
      _$SelectableEventCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SelectableEventCopyWithImpl<T, $Res>
    implements $SelectableEventCopyWith<T, $Res> {
  _$SelectableEventCopyWithImpl(this._value, this._then);

  final SelectableEvent<T> _value;
  // ignore: unused_field
  final $Res Function(SelectableEvent<T>) _then;
}

/// @nodoc
abstract class _$$SelectableEventSelectCopyWith<T, $Res> {
  factory _$$SelectableEventSelectCopyWith(_$SelectableEventSelect<T> value,
          $Res Function(_$SelectableEventSelect<T>) then) =
      __$$SelectableEventSelectCopyWithImpl<T, $Res>;
  $Res call({T item});
}

/// @nodoc
class __$$SelectableEventSelectCopyWithImpl<T, $Res>
    extends _$SelectableEventCopyWithImpl<T, $Res>
    implements _$$SelectableEventSelectCopyWith<T, $Res> {
  __$$SelectableEventSelectCopyWithImpl(_$SelectableEventSelect<T> _value,
      $Res Function(_$SelectableEventSelect<T>) _then)
      : super(_value, (v) => _then(v as _$SelectableEventSelect<T>));

  @override
  _$SelectableEventSelect<T> get _value =>
      super._value as _$SelectableEventSelect<T>;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$SelectableEventSelect<T>(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SelectableEventSelect<T> implements SelectableEventSelect<T> {
  const _$SelectableEventSelect(this.item);

  @override
  final T item;

  @override
  String toString() {
    return 'SelectableEvent<$T>.select(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableEventSelect<T> &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$SelectableEventSelectCopyWith<T, _$SelectableEventSelect<T>>
      get copyWith =>
          __$$SelectableEventSelectCopyWithImpl<T, _$SelectableEventSelect<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T item) select,
    required TResult Function(int index) selectAt,
    required TResult Function(int index, T value) modifyAt,
    required TResult Function(T item) remove,
    required TResult Function(int index) removeAt,
  }) {
    return select(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
  }) {
    return select?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableEventSelect<T> value) select,
    required TResult Function(SelectableEventSelectAt<T> value) selectAt,
    required TResult Function(SelectableEventModify<T> value) modifyAt,
    required TResult Function(SelectableEventRemove<T> value) remove,
    required TResult Function(SelectableEventRemoveAt<T> value) removeAt,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class SelectableEventSelect<T> implements SelectableEvent<T> {
  const factory SelectableEventSelect(final T item) =
      _$SelectableEventSelect<T>;

  T get item;
  @JsonKey(ignore: true)
  _$$SelectableEventSelectCopyWith<T, _$SelectableEventSelect<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectableEventSelectAtCopyWith<T, $Res> {
  factory _$$SelectableEventSelectAtCopyWith(_$SelectableEventSelectAt<T> value,
          $Res Function(_$SelectableEventSelectAt<T>) then) =
      __$$SelectableEventSelectAtCopyWithImpl<T, $Res>;
  $Res call({int index});
}

/// @nodoc
class __$$SelectableEventSelectAtCopyWithImpl<T, $Res>
    extends _$SelectableEventCopyWithImpl<T, $Res>
    implements _$$SelectableEventSelectAtCopyWith<T, $Res> {
  __$$SelectableEventSelectAtCopyWithImpl(_$SelectableEventSelectAt<T> _value,
      $Res Function(_$SelectableEventSelectAt<T>) _then)
      : super(_value, (v) => _then(v as _$SelectableEventSelectAt<T>));

  @override
  _$SelectableEventSelectAt<T> get _value =>
      super._value as _$SelectableEventSelectAt<T>;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$SelectableEventSelectAt<T>(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectableEventSelectAt<T> implements SelectableEventSelectAt<T> {
  const _$SelectableEventSelectAt(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SelectableEvent<$T>.selectAt(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableEventSelectAt<T> &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$SelectableEventSelectAtCopyWith<T, _$SelectableEventSelectAt<T>>
      get copyWith => __$$SelectableEventSelectAtCopyWithImpl<T,
          _$SelectableEventSelectAt<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T item) select,
    required TResult Function(int index) selectAt,
    required TResult Function(int index, T value) modifyAt,
    required TResult Function(T item) remove,
    required TResult Function(int index) removeAt,
  }) {
    return selectAt(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
  }) {
    return selectAt?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
    required TResult orElse(),
  }) {
    if (selectAt != null) {
      return selectAt(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableEventSelect<T> value) select,
    required TResult Function(SelectableEventSelectAt<T> value) selectAt,
    required TResult Function(SelectableEventModify<T> value) modifyAt,
    required TResult Function(SelectableEventRemove<T> value) remove,
    required TResult Function(SelectableEventRemoveAt<T> value) removeAt,
  }) {
    return selectAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
  }) {
    return selectAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
    required TResult orElse(),
  }) {
    if (selectAt != null) {
      return selectAt(this);
    }
    return orElse();
  }
}

abstract class SelectableEventSelectAt<T> implements SelectableEvent<T> {
  const factory SelectableEventSelectAt(final int index) =
      _$SelectableEventSelectAt<T>;

  int get index;
  @JsonKey(ignore: true)
  _$$SelectableEventSelectAtCopyWith<T, _$SelectableEventSelectAt<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectableEventModifyCopyWith<T, $Res> {
  factory _$$SelectableEventModifyCopyWith(_$SelectableEventModify<T> value,
          $Res Function(_$SelectableEventModify<T>) then) =
      __$$SelectableEventModifyCopyWithImpl<T, $Res>;
  $Res call({int index, T value});
}

/// @nodoc
class __$$SelectableEventModifyCopyWithImpl<T, $Res>
    extends _$SelectableEventCopyWithImpl<T, $Res>
    implements _$$SelectableEventModifyCopyWith<T, $Res> {
  __$$SelectableEventModifyCopyWithImpl(_$SelectableEventModify<T> _value,
      $Res Function(_$SelectableEventModify<T>) _then)
      : super(_value, (v) => _then(v as _$SelectableEventModify<T>));

  @override
  _$SelectableEventModify<T> get _value =>
      super._value as _$SelectableEventModify<T>;

  @override
  $Res call({
    Object? index = freezed,
    Object? value = freezed,
  }) {
    return _then(_$SelectableEventModify<T>(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SelectableEventModify<T> implements SelectableEventModify<T> {
  const _$SelectableEventModify(this.index, this.value);

  @override
  final int index;
  @override
  final T value;

  @override
  String toString() {
    return 'SelectableEvent<$T>.modifyAt(index: $index, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableEventModify<T> &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$SelectableEventModifyCopyWith<T, _$SelectableEventModify<T>>
      get copyWith =>
          __$$SelectableEventModifyCopyWithImpl<T, _$SelectableEventModify<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T item) select,
    required TResult Function(int index) selectAt,
    required TResult Function(int index, T value) modifyAt,
    required TResult Function(T item) remove,
    required TResult Function(int index) removeAt,
  }) {
    return modifyAt(index, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
  }) {
    return modifyAt?.call(index, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
    required TResult orElse(),
  }) {
    if (modifyAt != null) {
      return modifyAt(index, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableEventSelect<T> value) select,
    required TResult Function(SelectableEventSelectAt<T> value) selectAt,
    required TResult Function(SelectableEventModify<T> value) modifyAt,
    required TResult Function(SelectableEventRemove<T> value) remove,
    required TResult Function(SelectableEventRemoveAt<T> value) removeAt,
  }) {
    return modifyAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
  }) {
    return modifyAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
    required TResult orElse(),
  }) {
    if (modifyAt != null) {
      return modifyAt(this);
    }
    return orElse();
  }
}

abstract class SelectableEventModify<T> implements SelectableEvent<T> {
  const factory SelectableEventModify(final int index, final T value) =
      _$SelectableEventModify<T>;

  int get index;
  T get value;
  @JsonKey(ignore: true)
  _$$SelectableEventModifyCopyWith<T, _$SelectableEventModify<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectableEventRemoveCopyWith<T, $Res> {
  factory _$$SelectableEventRemoveCopyWith(_$SelectableEventRemove<T> value,
          $Res Function(_$SelectableEventRemove<T>) then) =
      __$$SelectableEventRemoveCopyWithImpl<T, $Res>;
  $Res call({T item});
}

/// @nodoc
class __$$SelectableEventRemoveCopyWithImpl<T, $Res>
    extends _$SelectableEventCopyWithImpl<T, $Res>
    implements _$$SelectableEventRemoveCopyWith<T, $Res> {
  __$$SelectableEventRemoveCopyWithImpl(_$SelectableEventRemove<T> _value,
      $Res Function(_$SelectableEventRemove<T>) _then)
      : super(_value, (v) => _then(v as _$SelectableEventRemove<T>));

  @override
  _$SelectableEventRemove<T> get _value =>
      super._value as _$SelectableEventRemove<T>;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$SelectableEventRemove<T>(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SelectableEventRemove<T> implements SelectableEventRemove<T> {
  const _$SelectableEventRemove(this.item);

  @override
  final T item;

  @override
  String toString() {
    return 'SelectableEvent<$T>.remove(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableEventRemove<T> &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$SelectableEventRemoveCopyWith<T, _$SelectableEventRemove<T>>
      get copyWith =>
          __$$SelectableEventRemoveCopyWithImpl<T, _$SelectableEventRemove<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T item) select,
    required TResult Function(int index) selectAt,
    required TResult Function(int index, T value) modifyAt,
    required TResult Function(T item) remove,
    required TResult Function(int index) removeAt,
  }) {
    return remove(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
  }) {
    return remove?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableEventSelect<T> value) select,
    required TResult Function(SelectableEventSelectAt<T> value) selectAt,
    required TResult Function(SelectableEventModify<T> value) modifyAt,
    required TResult Function(SelectableEventRemove<T> value) remove,
    required TResult Function(SelectableEventRemoveAt<T> value) removeAt,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class SelectableEventRemove<T> implements SelectableEvent<T> {
  const factory SelectableEventRemove(final T item) =
      _$SelectableEventRemove<T>;

  T get item;
  @JsonKey(ignore: true)
  _$$SelectableEventRemoveCopyWith<T, _$SelectableEventRemove<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectableEventRemoveAtCopyWith<T, $Res> {
  factory _$$SelectableEventRemoveAtCopyWith(_$SelectableEventRemoveAt<T> value,
          $Res Function(_$SelectableEventRemoveAt<T>) then) =
      __$$SelectableEventRemoveAtCopyWithImpl<T, $Res>;
  $Res call({int index});
}

/// @nodoc
class __$$SelectableEventRemoveAtCopyWithImpl<T, $Res>
    extends _$SelectableEventCopyWithImpl<T, $Res>
    implements _$$SelectableEventRemoveAtCopyWith<T, $Res> {
  __$$SelectableEventRemoveAtCopyWithImpl(_$SelectableEventRemoveAt<T> _value,
      $Res Function(_$SelectableEventRemoveAt<T>) _then)
      : super(_value, (v) => _then(v as _$SelectableEventRemoveAt<T>));

  @override
  _$SelectableEventRemoveAt<T> get _value =>
      super._value as _$SelectableEventRemoveAt<T>;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$SelectableEventRemoveAt<T>(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectableEventRemoveAt<T> implements SelectableEventRemoveAt<T> {
  const _$SelectableEventRemoveAt(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SelectableEvent<$T>.removeAt(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableEventRemoveAt<T> &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$SelectableEventRemoveAtCopyWith<T, _$SelectableEventRemoveAt<T>>
      get copyWith => __$$SelectableEventRemoveAtCopyWithImpl<T,
          _$SelectableEventRemoveAt<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T item) select,
    required TResult Function(int index) selectAt,
    required TResult Function(int index, T value) modifyAt,
    required TResult Function(T item) remove,
    required TResult Function(int index) removeAt,
  }) {
    return removeAt(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
  }) {
    return removeAt?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T item)? select,
    TResult Function(int index)? selectAt,
    TResult Function(int index, T value)? modifyAt,
    TResult Function(T item)? remove,
    TResult Function(int index)? removeAt,
    required TResult orElse(),
  }) {
    if (removeAt != null) {
      return removeAt(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableEventSelect<T> value) select,
    required TResult Function(SelectableEventSelectAt<T> value) selectAt,
    required TResult Function(SelectableEventModify<T> value) modifyAt,
    required TResult Function(SelectableEventRemove<T> value) remove,
    required TResult Function(SelectableEventRemoveAt<T> value) removeAt,
  }) {
    return removeAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
  }) {
    return removeAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableEventSelect<T> value)? select,
    TResult Function(SelectableEventSelectAt<T> value)? selectAt,
    TResult Function(SelectableEventModify<T> value)? modifyAt,
    TResult Function(SelectableEventRemove<T> value)? remove,
    TResult Function(SelectableEventRemoveAt<T> value)? removeAt,
    required TResult orElse(),
  }) {
    if (removeAt != null) {
      return removeAt(this);
    }
    return orElse();
  }
}

abstract class SelectableEventRemoveAt<T> implements SelectableEvent<T> {
  const factory SelectableEventRemoveAt(final int index) =
      _$SelectableEventRemoveAt<T>;

  int get index;
  @JsonKey(ignore: true)
  _$$SelectableEventRemoveAtCopyWith<T, _$SelectableEventRemoveAt<T>>
      get copyWith => throw _privateConstructorUsedError;
}
