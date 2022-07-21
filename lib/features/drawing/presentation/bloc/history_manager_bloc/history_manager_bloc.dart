import '../../../../../core/injections/injection.dart';
import '../drawing_bloc/drawing_bloc.dart';
import 'history_state.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';

part "history_manager_state.dart";

part "history_manager_event.dart";

part "history_manager_bloc.freezed.dart";

@LazySingleton()
class HistoryManagerBloc extends Bloc<HistoryManagerEvent, HistoryManagerState> {
  HistoryManagerBloc() : super(HistoryManagerStateX.initial()) {
    on<HistoryManagerEvent>((event, emit) {
      event.map(
        undo: (event) => onUndo(event, emit),
        redo: (event) => onRedo(event, emit),
        push: (event) => onPush(event, emit),
      );
    });
  }

  void onUndo(
    HistoryManagerEventUndo event,
    Emitter<HistoryManagerState> emit,
  ) {
    final stateAfterUndo = state.undo();
    historyStateMapper(stateAfterUndo.currentState);
    emit(stateAfterUndo);
  }

  void onRedo(
    HistoryManagerEventRedo event,
    Emitter<HistoryManagerState> emit,
  ) {
    final stateAfterRedo = state.redo();
    historyStateMapper(stateAfterRedo.currentState);
    emit(stateAfterRedo);
  }

  void onPush(
    HistoryManagerEventPush event,
    Emitter<HistoryManagerState> emit,
  ) {
    emit(state.addNewState(event.state));
  }

  void historyStateMapper(HistoryState? state) {
    if (state is DrawingState) {
      getIt<DrawingBloc>().add(DrawingEvent.setState(state));
    }
  }
}
