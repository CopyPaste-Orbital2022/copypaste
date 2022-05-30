part of 'drawing_pen_bloc.dart';

@freezed
class DrawingPenState with _$DrawingPenState {
  const factory DrawingPenState({
    required SelectableItems<Color> colors,
    required SelectableItems<double> widths,
    String? errorMessage,
  }) = _DrawingPenState;
}

extension DrawingPencilStateX on DrawingPenState {
  static DrawingPenState initial() {
    return const DrawingPenState(
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
