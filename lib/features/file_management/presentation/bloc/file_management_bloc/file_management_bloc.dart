import 'dart:developer';

import 'package:copypaste/features/file_management/domain/usecases/change_drawing_name.dart';
import 'package:copypaste/features/file_management/domain/usecases/create_drawing.dart';
import 'package:copypaste/features/file_management/domain/usecases/load_drawings_list.dart';
import 'package:copypaste/features/file_management/domain/usecases/load_most_recent_drawing.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';

import '../../../domain/entities/sp_drawing.dart';

part "file_management_state.dart";

part "file_management_event.dart";

part "file_management_bloc.freezed.dart";

@LazySingleton()
class FileManagementBloc
    extends Bloc<FileManagementEvent, FileManagementState> {
  final ChangeDrawingNameUsecase changeDrawingNameUsecase;
  final CreateNewDrawingUsecase createNewDrawingUsecase;
  final LoadDrawingsListUsecase loadDrawingsListUsecase;
  final LoadMostRecentDrawingUsecase loadMostRecentDrawingUsecase;

  FileManagementBloc(
    this.changeDrawingNameUsecase,
    this.createNewDrawingUsecase,
    this.loadDrawingsListUsecase,
    this.loadMostRecentDrawingUsecase,
  ) : super(FileManagementStateX.initial()) {
    on<FileManagementEvent>(
      (event, emit) async {
        await event.map(
          initialEvent: (event) async => await _onInitialEvent(emit),
          createNewDrawingEvent: (event) async =>
              await _onCreateNewDrawingEvent(event, emit),
        );
      },
    );
  }

  Future<void> _onInitialEvent(Emitter<FileManagementState> emit) async {
    final drawingsListOrFailure = await loadDrawingsListUsecase();
    drawingsListOrFailure.fold(
      (failure) {
        // TODO: write the code to notify the user when there is a failure
        log("$failure");
      },
      (drawings) {
        emit(
          state.copyWith(drawings: drawings),
        );
      },
    );
  }

  Future<void> _onCreateNewDrawingEvent(
      FileManagementCreateNewDrawingEvent event,
      Emitter<FileManagementState> emit) async {
    final newDrawingOrFailure = await createNewDrawingUsecase();
    await newDrawingOrFailure.fold((l) {
      // TODO: add error handling
    }, (r) async {
      await _onInitialEvent(emit);
    });
  }
}
