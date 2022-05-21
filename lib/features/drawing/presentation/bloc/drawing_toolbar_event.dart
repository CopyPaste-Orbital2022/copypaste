import 'package:flutter/material.dart';

import '../../domain/entities/drawing_tools.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_toolbar_event.freezed.dart';

@freezed
abstract class DrawingToolbarEvent with _$DrawingToolbarEvent {
  // changes the current drawing button selection
  const factory DrawingToolbarEvent.changeDrawingButtonSelectionEvent(
      DrawingTool tool) = ChangeDrawingButtonSelectionEvent;

  // Color Pallet Related Events

  // changes the current color
  const factory DrawingToolbarEvent.changeColorSelectionEvent(int colorIndex) =
      ChangeColorSelectionEvent;

  // change the value of the color at the index
  const factory DrawingToolbarEvent.changeColorValueEvent(
      int colorIndex, Color currentColor) = ChangeColorValueEvent;

  // adds the color
  const factory DrawingToolbarEvent.addColorEvent(Color color) = AddColorEvent;

  // deletes the color
  const factory DrawingToolbarEvent.deleteColorEvent(int colorIndex) =
      DeleteColorEvent;

  // changes the stroke width selection
  const factory DrawingToolbarEvent.changeStrokeWidthSelectionEvent(
      int widthIndex) = ChangeStrokeWidthSelectionEvent;

  // changes the useStylus
  const factory DrawingToolbarEvent.toggleUseStylusEvent() =
      ToggleUseStylusEvent;

  // changes the eraser width selection
  const factory DrawingToolbarEvent.changeEraserWidthSelectionEvent(
      int widthIndex) = ChangeEraserWidthSelectionEvent;

  // changes the eraser width value
  const factory DrawingToolbarEvent.changeEraserWidthValueEvent(
      int widthIndex, double width) = ChangeEraserWidthValueEvent;
}
