part of "pen_settings_bloc.dart";

@freezed
class PenSettingsState with _$PenSettingsState {
  const factory PenSettingsState({
    @Default(0.5) double thinning,
    @Default(0.5) double smoothing,
    @Default(0.5) double streamline,
    @Default(5) double taperStart,
    @Default(5) double taperEnd,
    @Default(true) bool capStart,
    @Default(true) bool capEnd,
    @Default(false) bool useStylus,
  }) = _PenSettingsState;
}

extension PenSettingsStateX on PenSettingsState {
  static PenSettingsState initial() {
    return const PenSettingsState();
  }
}
