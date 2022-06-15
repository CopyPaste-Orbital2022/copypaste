part of "selectable_bloc.dart";

@freezed
class SelectableEvent<T> with _$SelectableEvent<T> {
  /// Selects an item.
  const factory SelectableEvent.select(T item) = SelectableEventSelect<T>;

  /// Selects an item at a given index.
  const factory SelectableEvent.selectAt(int index) =
      SelectableEventSelectAt<T>;

  /// Modifies the value of the selected item.
  const factory SelectableEvent.modifyAt(int index, T value) =
      SelectableEventModify<T>;

  /// Removes an item.
  const factory SelectableEvent.remove(T item) = SelectableEventRemove<T>;

  /// Removes an item at a given index.
  const factory SelectableEvent.removeAt(int index) =
      SelectableEventRemoveAt<T>;
}
