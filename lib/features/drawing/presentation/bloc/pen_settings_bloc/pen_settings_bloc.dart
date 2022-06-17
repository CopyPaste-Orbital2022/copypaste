import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';

part "pen_settings_state.dart";

part "pen_settings_event.dart";

part "pen_settings_bloc.freezed.dart";

@LazySingleton()
class PenSettingsBloc extends Bloc<PenSettingsEvent, PenSettingsState> {
  PenSettingsBloc() : super(PenSettingsStateX.initial()) {
    on<PenSettingsEvent>(
      (event, emit) {
        event.map(
          thinningChanged: (event) => emit(
            state.copyWith(thinning: event.thinning),
          ),
          smoothingChanged: (event) => emit(
            state.copyWith(smoothing: event.smoothing),
          ),
          streamlineChanged: (event) => emit(
            state.copyWith(streamline: event.streamline),
          ),
          taperStartChanged: (event) => emit(
            state.copyWith(taperStart: event.taperStart),
          ),
          taperEndChanged: (event) => emit(
            state.copyWith(taperEnd: event.taperEnd),
          ),
          capStartChanged: (event) => emit(
            state.copyWith(capStart: event.capStart),
          ),
          capEndChanged: (event) => emit(
            state.copyWith(capEnd: event.capEnd),
          ),
          useStylusChanged: (event) => emit(
            state.copyWith(useStylus: event.useStylus),
          ),
        );
      },
    );
  }
}
