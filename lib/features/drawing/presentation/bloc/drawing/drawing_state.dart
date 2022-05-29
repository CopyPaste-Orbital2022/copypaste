import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/drawing_tool.dart';

part 'drawing_state.freezed.dart';

@freezed
class DrawingState with _$DrawingState {
  const factory DrawingState({
    required DrawingTool currentTool,
    required bool usesStylus,
  }) = _DrawingState;
}

extension DrawingStateX on DrawingState {
  static DrawingState initial() => const DrawingState(
        currentTool: DrawingTool.hand,
        usesStylus: false,
      );
}
