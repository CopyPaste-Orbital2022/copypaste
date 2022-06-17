part of "history_manager_bloc.dart";

@freezed
class HistoryManagerEvent with _$HistoryManagerEvent {
  /// Asks to undo the last action
  const factory HistoryManagerEvent.undo() = _HistoryManagerEventUndo;

  /// Asks to redo the last action
  const factory HistoryManagerEvent.redo() = _HistoryManagerEventRedo;

  /// Pushes the given [state] to the stack
  const factory HistoryManagerEvent.push(HistoryState state) =
      _HistoryManagerEventPush;
}
