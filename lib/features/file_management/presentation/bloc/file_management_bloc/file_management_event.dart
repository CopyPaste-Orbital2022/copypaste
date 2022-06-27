part of "file_management_bloc.dart";

@freezed
class FileManagementEvent with _$FileManagementEvent {
  /// The [FileManagementEventInitialEvent], will ask to load all the drawings from the cloud
  const factory FileManagementEvent.refreshListEvent() =
      FileManagementEventRefreshList;

  /// When the user creates a new drawing
  const factory FileManagementEvent.createNewDrawingEvent() =
      FileManagementEventCreateNewDrawing;

  /// When the user wants to change the name of the drawing
  const factory FileManagementEvent.changeDrawingNameEvent(
    SPDrawing drawing,
    String name,
  ) = FileManagementEventChangeDrawingName;

  /// When the user selects the drawing
  const factory FileManagementEvent.selectDrawing(SPDrawing drawing) =
      FileManagementEventSelectDrawing;
}
