part of "drawing_bloc.dart";

@freezed
class DrawingState with _$DrawingState {
  const factory DrawingState() = _DrawingState;
}

extension DrawingStateX on DrawingState {
  static DrawingState initial() {
    return const DrawingState();
  }
}