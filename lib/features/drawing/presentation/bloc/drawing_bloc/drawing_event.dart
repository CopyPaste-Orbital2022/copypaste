part of "drawing_bloc.dart";

@freezed
class DrawingEvent with _$DrawingEvent {
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
}
