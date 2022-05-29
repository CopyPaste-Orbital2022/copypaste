part of "drawing_bloc.dart";


@freezed
class DrawingState with _$DrawingState {
  /// [DrawingState] describes the current state of the drawing app. Specifically:
  ///
  /// [tool] is the current tool that is being used;
  ///
  /// [useStylus] describes whether if we use stylus to draw, hence disabling other drawing methods.
  const factory DrawingState({
    required DrawingTool tool,
    required bool useStylus,
}) = _DrawingState;
}

extension DrawingStateX on DrawingState {
  static DrawingState initial() {
    return const DrawingState(
      tool: DrawingTool.hand,
      useStylus: false,
    );
  }
}