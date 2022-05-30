part of 'drawing_pen_bloc.dart';

@freezed
class DrawingPenEvent with _$DrawingPenEvent {
  /// changes the current stroke size to the [newSzie]
  const factory DrawingPenEvent.changeStrokeSizeValueEvent(double newSize) =
      ChangePenStrokeSizeValueEvent;

  /// changes the current stroke size selection to the selection at [index]
  const factory DrawingPenEvent.changeStrokeSizeSelectionEvent(int index) =
      ChangePenStrokeSizeSelectionEvent;

  /// changes the current stroke color to the color at [index]
  const factory DrawingPenEvent.changeStrokeColorSelectionEvent(int index) =
      ChangePenStrokeColorSelectionEvent;

  /// changes the current color's value
  const factory DrawingPenEvent.changePencilCurrentColorValueEvent(
      Color color) = ChangePenCurrentColorValueEvent;

  /// duplicates the current color
  const factory DrawingPenEvent.duplicateCurrentColorEvent() =
      PenDuplicateCurrentColorEvent;

  /// deletes the current color
  const factory DrawingPenEvent.deleteCurrentColorEvent() =
      PenDeleteCurrentColorEvent;

  /// show error snackbar
  const factory DrawingPenEvent.showErrorSnackbarEvent(String message) =
      ShowPenErrorSnackbarEvent;

  /// dismiss error snackbar
  const factory DrawingPenEvent.dismissErrorSnackbarEvent() =
      DismissPenErrorSnackbarEvent;
}
