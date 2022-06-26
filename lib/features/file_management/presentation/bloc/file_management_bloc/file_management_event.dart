part of "file_management_bloc.dart";

@freezed
class FileManagementEvent with _$FileManagementEvent {
  /// The [FileManagementEventInitialEvent], will ask to load all the drawings from the cloud
  const factory FileManagementEvent.initialEvent() =
      FileManagementEventInitialEvent;

  /// When the user creates a new drawing
  const factory FileManagementEvent.createNewDrawingEvent() =
      FileManagementCreateNewDrawingEvent;
}
