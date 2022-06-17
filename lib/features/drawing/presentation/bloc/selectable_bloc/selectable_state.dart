part of "selectable_bloc.dart";

@freezed
class SelectableState<T> with _$SelectableState<T> {
  const factory SelectableState({
    required SelectableItems<T> items,
  }) = _SelectableState<T>;
}

extension SelectableStateX<T> on SelectableState<T> {
  // the currently selected item
  T? get selected => items.selected;

  // get the item at the given index
  T? get(int index) => items.get(index);

  // get the index of the currently selected item
  int get currentIndex => items.currentIndex;
}
