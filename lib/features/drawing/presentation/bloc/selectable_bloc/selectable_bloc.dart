import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:selectable_items/selectable_items.dart';

part "selectable_state.dart";

part "selectable_event.dart";

part "selectable_bloc.freezed.dart";

abstract class SelectableBloc<T>
    extends Bloc<SelectableEvent<T>, SelectableState<T>> {
  SelectableBloc(SelectableState<T> initialState) : super(initialState) {
    on<SelectableEvent<T>>((event, emit) {
      event.map(
        select: (event) => onSelect(event, emit),
        selectAt: (event) => onSelectAt(event, emit),
        modifyAt: (event) => onModifyAt(event, emit),
        remove: (event) => onRemove(event, emit),
        removeAt: (event) => onRemoveAt(event, emit),
      );
    });
  }

  /// Selects an item.
  void onSelect(SelectableEventSelect<T> event, Emitter emit) {
    final List<T> items = state.items.items;
    final int index = items.indexOf(event.item);
    if (index == -1) {
      emit(state.copyWith(items: state.items.copyWith()));
    } else {
      emit(
        state.copyWith(
          items: state.items.select(index).fold((l) => state.items, (r) => r),
        ),
      );
    }
  }

  // Selects an item at a given index.
  void onSelectAt(SelectableEventSelectAt<T> event, Emitter emit) {
    emit(
      state.copyWith(
        items:
            state.items.select(event.index).fold((l) => state.items, (r) => r),
      ),
    );
  }

  // Modifies the value of the selected item.
  void onModifyAt(SelectableEventModify<T> event, Emitter emit) {
    emit(
      state.copyWith(
        items: state.items.modify(event.index, event.value).fold(
              (l) => state.items,
              (r) => r,
            ),
      ),
    );
  }

  // Removes an item.
  void onRemove(SelectableEventRemove<T> event, Emitter emit) {
    final List<T> items = state.items.items;
    final int index = items.indexOf(event.item);
    if (index == -1) {
      emit(state.copyWith(items: state.items.copyWith()));
    } else {
      emit(
        state.copyWith(
          items: state.items.remove(index).fold((l) => state.items, (r) => r),
        ),
      );
    }
  }

  // Removes an item at a given index.
  void onRemoveAt(SelectableEventRemoveAt<T> event, Emitter emit) {
    emit(
      state.copyWith(
        items:
            state.items.remove(event.index).fold((l) => state.items, (r) => r),
      ),
    );
  }
}
