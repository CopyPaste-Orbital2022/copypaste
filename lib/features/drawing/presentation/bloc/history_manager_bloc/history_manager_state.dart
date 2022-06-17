part of "history_manager_bloc.dart";

@freezed
class HistoryManagerState with _$HistoryManagerState {
  const factory HistoryManagerState({
    int? currentIndex,
    @Default(<HistoryState>[]) List<HistoryState> stack,
  }) = _HistoryManagerState;
}

extension HistoryManagerStateX on HistoryManagerState {
  static HistoryManagerState initial() {
    return HistoryManagerState(
      currentIndex: 0,
      stack: [DrawingStateX.initial()],
    );
  }

  HistoryState? get currentState {
    if (currentIndex == null) return null;
    return stack[currentIndex!];
  }

  /// Whether the user can perform an undo action
  bool get canUndo => currentIndex != null && currentIndex! > 0;

  /// Whether the user can perform a redo action
  bool get canRedo => currentIndex != null && currentIndex! < stack.length - 1;

  /// Undo the last action
  HistoryManagerState undo() {
    if (canUndo) {
      return copyWith(
        currentIndex: currentIndex! - 1,
      );
    }
    return this;
  }

  /// Redo the last action
  HistoryManagerState redo() {
    if (canRedo) {
      return copyWith(
        currentIndex: currentIndex! + 1,
      );
    }
    return this;
  }

  /// Pops the last history
  HistoryManagerState pop() {
    if (stack.length <= 1) {
      return this;
    }
    return copyWith(
      currentIndex: currentIndex! - 1,
      stack: stack.sublist(0, stack.length - 1),
    );
  }

  /// Pushs the given [state] to the stack
  HistoryManagerState push(HistoryState state) {
    return copyWith(
      stack: List.from(stack)..add(state),
      currentIndex: stack.length,
    );
  }

  /// Pops until the given index
  HistoryManagerState popUntil(int index) {
    if (index < 0 || index + 1 >= stack.length) {
      return this;
    }
    return copyWith(
      currentIndex: index,
      stack: stack.sublist(0, index + 1),
    );
  }

  /// Pops until the current index
  HistoryManagerState popUntilCurrent() {
    if (currentIndex == null) {
      return this;
    }
    return popUntil(currentIndex!);
  }

  /// Pops until the current index and pushes the given state
  HistoryManagerState addNewState(HistoryState state) {
    if (currentIndex == null) {
      return push(state);
    }
    return popUntilCurrent().push(state);
  }
}
