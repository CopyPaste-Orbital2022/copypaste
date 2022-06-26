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
    @Default([]) List<SPStroke> strokes,
    SPStroke? currentStroke,
    Offset? eraserPosition,
  }) = _DrawingState;
}

extension DrawingStateX on DrawingState {
  static DrawingState initial() {
    return const DrawingState();
  }

  /// Starts a new stroke
  DrawingState startDrawing(
    SPPoint point, {
    required Color color,
    required double size,
    required double thinning, // check
    required double smoothing, // check
    required double streamline, // check
    required double taperStart, // check
    required double taperEnd, // check
    required bool capStart,
    required bool capEnd,
    required bool simulatePressure,
  }) {
    final stroke = SPStroke(
      id: const Uuid().v4(),
      color: color,
      size: size,
      thinning: thinning,
      smoothing: smoothing,
      streamline: streamline,
      taperStart: taperStart,
      taperEnd: taperEnd,
      capStart: capStart,
      capEnd: capEnd,
      simulatePressure: simulatePressure,
      points: [point],
    );
    return copyWith(currentStroke: stroke);
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
