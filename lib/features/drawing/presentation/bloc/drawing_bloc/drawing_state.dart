part of "drawing_bloc.dart";

@freezed
class DrawingState with _$DrawingState {
  const factory DrawingState({
    @Default([]) List<SPStroke> strokes,
    SPStroke? currentStroke,
  }) = _DrawingState;
}

extension DrawingStateX on DrawingState {
  static DrawingState initial() {
    return DrawingState();
  }
}
