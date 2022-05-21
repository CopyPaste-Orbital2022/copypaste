import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectable_param.freezed.dart';

typedef PenColorSelectable = SelectableParam<Color>;

typedef PenWidthSelectable = SelectableParam<double>;

typedef EraserWidthSelectable = SelectableParam<double>;

/// A param that is a selectable one
///
/// [items] the selectable items
///
/// [index] the current item
///
/// [maxLimit] the maximum number of items allowed
///
/// [minLimit] the minimum number of items allowed
@freezed
abstract class SelectableParam<T> with _$SelectableParam<T> {
  const factory SelectableParam({
    required List<T> items,
    required int index,
    required int maxLimit,
    required int minLimit,
  }) = _SelectableParam;
}

extension SelectableParamX<T> on SelectableParam<T> {
  /// whether if you can add an item
  bool get isAddable => items.length < maxLimit;

  /// whether if you can remove an item
  bool get isDeletable => items.length > minLimit;

  /// the currently selected item
  T get selectedItem => items[index];

  /// if the item at the specified index is selected
  bool getIsSelected(int index) => this.index == index;

  /// adds an item to the current param
  /// and returns the new param
  SelectableParam addItem({
    required T item,
    int? atIndex,
  }) {
    late List<T> lst;

    if (atIndex != null) {
      lst = List.from(items)..insert(atIndex, item);
    } else {
      lst = List.from(items)..add(item);
      atIndex = lst.length - 1;
    }
    return copyWith(
      items: lst,
      index: atIndex,
    );
  }

  /// removes an item from the current param
  /// and returns the new param
  SelectableParam removeItem({
    required int index,
  }) {
    final List<T> newItems = List.from(items)
        .asMap()
        .entries
        .where(
          (element) => element.key != index,
        )
        .map(
          (e) => e.value as T,
        )
        .toList();
    final newIndex = index > 0 ? index - 1 : 0;
    return copyWith(
      index: newIndex,
      items: newItems,
    );
  }

  /// selects the item at the [index]
  SelectableParam select(int index) {
    return copyWith(
      index: index,
    ) as SelectableParam<T>;
  }

  /// modifies the item at the [index] to the given [value]
  SelectableParam modify({
    required int index,
    required T value,
  }) {
    final List<T> newItems = List.from(items).asMap().entries.map((e) {
      if (e.key == index) {
        return value;
      } else {
        return e.value as T;
      }
    }).toList();
    return copyWith(
      index: index,
      items: newItems,
    ) as SelectableParam<T>;
  }
}
