part of "drawing_bloc.dart";

@freezed
class DrawingEvent with _$DrawingEvent {
  const factory DrawingEvent.changeToolEvent() = ChangeToolEvent;
}