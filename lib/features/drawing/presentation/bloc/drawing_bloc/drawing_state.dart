part of "drawing_bloc.dart";

/// The State of Drawing
///
/// [strokes] are the [strokes] that user has drawn.
///
/// [currentStroke] is the [stroke] that user is drawing. We separate this out to avoid rebuilding all the strokes
///
/// if [useStylus] is true, then the user is using a stylus, then drawing events
/// should only be handled if the event is a stylus event
///
/// if [eraserPosition] is not null, then the user is erasing
@freezed
class DrawingState with _$DrawingState {
  const factory DrawingState({
    @Default([]) List<SPStroke> strokes,
    SPStroke? currentStroke,
    @Default(false) bool useStylus,
    Offset? eraserPosition,
  }) = _DrawingState;
}

extension DrawingStateX on DrawingState {
  static DrawingState initial() {
    return DrawingState();
  }

  /// Starts a new stroke
  DrawingState startDrawing(SPPoint point, Color penColor, double penWidth) {
    final stroke = SPStroke(
      color: penColor,
      size: penWidth,
    );
    return copyWith(
      currentStroke: stroke.addPoint(point),
    );
  }

  /// Updates the current stroke
  DrawingState updateDrawing(SPPoint point) {
    final stroke = currentStroke!.addPoint(point);
    return copyWith(
      currentStroke: stroke,
    );
  }

  /// Ends the current stroke
  DrawingState endDrawing(SPPoint point) {
    final stroke = currentStroke!.addPoint(point).finish();
    return copyWith(
      strokes: List.from(strokes)..add(stroke),
      currentStroke: null,
    );
  }

  /// Erases the stroke at the given [eraserPosition] with the given [radius]
  DrawingState eraseStroke(Offset eraserPosition, double radius) {
    List<SPStroke> res = [];
    for (final stroke in strokes) {
      bool shouldEraseStroke = false;
      for (final point in stroke.borderPoints) {
        final offset = Offset(point.x, point.y) - eraserPosition;
        final distance = offset.distance;
        if (distance <= radius) {
          shouldEraseStroke = true;
          break;
        }
      }
      if (!shouldEraseStroke) {
        res.add(stroke);
      }
    }
    return copyWith(
      strokes: res,
    );
  }
}
