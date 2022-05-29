part of "drawing_pencil_bloc.dart";

@freezed
class DrawingPencilEvent with _$DrawingPencilEvent {
  /// changes the current stroke size to the [newSzie]
  const factory DrawingPencilEvent.modifyStrokeSizeEvent(double newSize) =
      ModifyStrokeSizeEvent;

  /// changes the current stroke size selection to the selection at [index]
  const factory DrawingPencilEvent.changeStrokeSizeSelectionEvent(int index) =
      ChangeStrokeSizeSelectionEvent;

  /// changes the current stroke color to the color at [index]
  const factory DrawingPencilEvent.changeStrokeColorSelectionEvent(int index) =
      ChangePencilStrokeColorSelectionEvent;

  /// changes the current color's value
  const factory DrawingPencilEvent.changePencilCurrentColorValueEvent(
      Color color) = ChangePencilCurrentColorValueEvent;

  /// duplicates the current color
  const factory DrawingPencilEvent.duplicateCurrentColorEvent() =
      PencilDuplicateCurrentColorEvent;

  /// deletes the current color
  const factory DrawingPencilEvent.deleteCurrentColorEvent() =
      PencilDeleteCurrentColorEvent;
}
