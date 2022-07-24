part of "drawing_bloc.dart";

/// The State of Drawing
///
/// [strokes] are the [strokes] that user has drawn.
///
/// [currentStroke] is the [stroke] that user is drawing. We separate this out to avoid rebuilding all the strokes
///
/// should only be handled if the event is a stylus event
///
/// if [eraserPosition] is not null, then the user is erasing
@freezed
class DrawingState extends HistoryState with _$DrawingState {
  const factory DrawingState({
    SPStroke? currentStroke,
    Offset? eraserPosition,
    @Default(const []) List<SPStroke> strokes,
  }) = _DrawingState;
}

extension DrawingStateX on DrawingState {
  static DrawingState initial() {
    return const DrawingState();
  }
}
