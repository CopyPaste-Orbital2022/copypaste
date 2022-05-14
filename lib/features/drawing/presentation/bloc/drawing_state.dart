import 'dart:ui';
import 'package:copypaste/features/drawing/domain/entities/pen_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_state.freezed.dart';

@freezed
abstract class DrawingState with _$DrawingState {
  // the initial state
  const factory DrawingState.initialState() = DrawingInitialState;
  // when the user is using pen
  const factory DrawingState.penState({
    required PenEntity pen,
  }) = DrawingPenState;
  // // when the user is using the highlighter
  // const factory DrawingState.highlighterState({
  //   required bool showRuler,
  //   required List<Color> colors,
  //   required int curretColorIdx,
  //   required bool useStylus,
  //   required double width,
  // }) = DrawingHighlighterState;
  // when the user is using the eraser
  const factory DrawingState.eraserState({
    required bool isPartial,
    required bool width,
  }) = DrawingEraserState;
  // when the user is in the pan mode
  const factory DrawingState.panState() = DrawingPanState;
  // when the user is in the photo mode
  const factory DrawingState.pictureState() = DrawingPictureState;
}
