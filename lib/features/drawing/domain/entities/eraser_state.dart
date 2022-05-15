import 'package:freezed_annotation/freezed_annotation.dart';

part 'eraser_state.freezed.dart';

/// The state of the eraser
///
/// [radius] - the radius of the eraser
///
/// [isPartial] - if the eraser is a partial eraser or not
@freezed
class EraserState with _$EraserState {
  const factory EraserState({
    required double radius,
    required bool isPartial,
  }) = _EraserState;
}
