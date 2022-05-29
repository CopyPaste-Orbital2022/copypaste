part of "drawing_pencil_bloc.dart";

@freezed
class DrawingPencilState with _$DrawingPencilState {
  const factory DrawingPencilState({
    required SelectableItems<Color> colors,
    required SelectableItems<double> widths,
    String? errorMessage,
  }) = _DrawingPencilState;
}

extension DrawingPencilStateX on DrawingPencilState {
  static DrawingPencilState initial() {
    return const DrawingPencilState(
      colors: SelectableItems<Color>(
        currentIndex: 0,
        items: [
          Color(0xFF000000),
          Color(0xFFFF0000),
          Color(0xFF00FF00),
          Color(0xFF0000FF),
        ],
      ),
      widths: SelectableItems<double>(
        currentIndex: 0,
        items: [5, 10, 15, 20, 25],
      ),
    );
  }
}
