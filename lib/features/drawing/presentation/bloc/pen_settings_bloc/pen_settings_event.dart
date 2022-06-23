part of "pen_settings_bloc.dart";

@freezed
class PenSettingsEvent with _$PenSettingsEvent {
  const factory PenSettingsEvent.thinningChanged(double thinning) =
      _PenSettingsEventThinningChanged;

  const factory PenSettingsEvent.smoothingChanged(double smoothing) =
      _PenSettingsEventSmoothingChanged;

  const factory PenSettingsEvent.streamlineChanged(double streamline) =
      _PenSettingsEventStreamlineChanged;

  const factory PenSettingsEvent.taperStartChanged(double taperStart) =
      _PenSettingsEventTaperStartChanged;

  const factory PenSettingsEvent.taperEndChanged(double taperEnd) =
      _PenSettingsEventTaperEndChanged;

  const factory PenSettingsEvent.capStartChanged(bool capStart) =
      _PenSettingsEventCapStartChanged;

  const factory PenSettingsEvent.capEndChanged(bool capEnd) =
      _PenSettingsEventCapEndChanged;

  const factory PenSettingsEvent.useStylusChanged(bool useStylus) =
      _PenSettingsEventUseStylusChanged;
}
