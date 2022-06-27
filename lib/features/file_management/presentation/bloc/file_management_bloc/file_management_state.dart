part of "file_management_bloc.dart";

@freezed
class FileManagementState with _$FileManagementState {
  const factory FileManagementState({
    @Default([]) List<SPDrawing> drawings,
    SPDrawing? selectedDrawing,
  }) = _FileManagementState;
}

extension FileManagementStateX on FileManagementState {
  static FileManagementState initial() {
    return const FileManagementState();
  }
}
