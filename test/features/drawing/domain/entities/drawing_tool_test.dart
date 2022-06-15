import 'package:flutter_test/flutter_test.dart';
import 'package:copypaste/features/drawing/domain/entities/drawing_tool.dart';

void main() {
  // Write tests for features/drawing/domain/entities/drawing_tool.dart here.
  test(
    'should return the drawing tool with the name given',
    () async {
      // arrange
      final hand = DrawingTool.fromString('hand');
      final eraser = DrawingTool.fromString('eraser');
      final pencil = DrawingTool.fromString('pencil');
      final highlighter = DrawingTool.fromString('highlighter');
      // assert
      expect(hand, DrawingTool.hand);
      expect(eraser, DrawingTool.eraser);
      expect(pencil, DrawingTool.pencil);
      expect(highlighter, DrawingTool.highlighter);
    },
  );
}
