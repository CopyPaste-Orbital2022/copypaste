part of "drawing_bloc.dart";

@freezed
class DrawingEvent with _$DrawingEvent {
  /// Initial Event
  const factory DrawingEvent.initial() = DrawingEventInitial;

  /// Register Pointer Down Event
  const factory DrawingEvent.pointerDown(
    PointerDownEvent event,
  ) = DrawingEventPointerDown;

  /// Register Pointer Move Event
  const factory DrawingEvent.pointerMove(
    PointerMoveEvent event,
  ) = DrawingEventPointerMove;

  /// Register Pointer Up Event
  const factory DrawingEvent.pointerUp(
    PointerUpEvent event,
  ) = DrawingEventPointerUp;

  /// Register Pointer Cancel Event
  const factory DrawingEvent.pointerCancel(
    PointerCancelEvent event,
  ) = DrawingEventPointerCancel;

  /// Set the state to the given [state]
  const factory DrawingEvent.setState(
    DrawingState state,
  ) = DrawingEventSetState;

  /// Loads strokes from the backend
  const factory DrawingEvent.loadStrokes() = DrawingEventLoadStrokes;
}
