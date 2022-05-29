part of "drawing_eraser_bloc.dart";

@freezed
class DrawingEraserState with _$DrawingEraserState {
    const factory DrawingEraserState() = _DrawingEraserState;
}

extension DrawingEraserStateX on DrawingEraserState {
    static DrawingEraserState initial() {
        return DrawingEraserState();
    }
} 
