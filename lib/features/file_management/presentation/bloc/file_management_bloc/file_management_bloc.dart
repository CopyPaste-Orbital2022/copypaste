import 'dart:developer';

import 'package:copypaste/core/routing/app_router.dart';
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
  final AppRouter router;

  FileManagementBloc(
    this.changeDrawingNameUsecase,
    this.createNewDrawingUsecase,
    this.loadDrawingsListUsecase,
    this.loadMostRecentDrawingUsecase,
    this.router,
  ) : super(FileManagementStateX.initial()) {
    on<FileManagementEvent>(
      (event, emit) async {
        await event.map(
          refreshListEvent: (event) async => await _onLoadDrawings(emit),
          createNewDrawingEvent: (event) async =>
              await _onCreateNewDrawingEvent(event, emit),
          changeDrawingNameEvent: (event) async =>
              await _onChangeDrawingNameEvent(event, emit),
          selectDrawing: (event) async =>
              await _onSelectDrawingEvent(event, emit),
        );
      },
    );
  }

  Future<void> _onLoadDrawings(Emitter<FileManagementState> emit) async {
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
      FileManagementEventCreateNewDrawing event,
      Emitter<FileManagementState> emit) async {
    final newDrawingOrFailure = await createNewDrawingUsecase();
    await newDrawingOrFailure.fold((l) {
      // TODO: add error handling
    }, (r) async {
      await _onLoadDrawings(emit);
    });
  }

  Future<void> _onChangeDrawingNameEvent(
      FileManagementEventChangeDrawingName event,
      Emitter<FileManagementState> emit) async {
    final failureOrUnit = await changeDrawingNameUsecase(
      event.drawing,
      event.name,
    );
    await failureOrUnit.fold((l) async {
      // TODO: add error handling
    }, (r) async {
      await _onLoadDrawings(emit);
    });
  }

  Future<void> _onSelectDrawingEvent(FileManagementEventSelectDrawing event,
      Emitter<FileManagementState> emit) async {
    emit(
      state.copyWith(
        selectedDrawing: event.drawing,
      ),
    );
    await router.replace(const DrawingRoute());
  }
}
