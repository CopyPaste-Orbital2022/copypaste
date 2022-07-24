import 'dart:developer';

import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/core/routing/app_router.dart';
import 'package:copypaste/features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart';
import 'package:copypaste/features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart';
import 'package:copypaste/features/file_management/domain/usecases/change_drawing_name.dart';
import 'package:copypaste/features/file_management/domain/usecases/create_drawing.dart';
import 'package:flutter/foundation.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';

import '../../../domain/entities/sp_drawing.dart';

part "file_management_state.dart";

part "file_management_event.dart";

part "file_management_bloc.freezed.dart";

@LazySingleton()
class FileManagementBloc extends Bloc<FileManagementEvent, FileManagementState> {
  final ChangeDrawingNameUsecase changeDrawingNameUsecase;
  final CreateNewDrawingUsecase createNewDrawingUsecase;
  final AppRouter router;

  FileManagementBloc(
    this.changeDrawingNameUsecase,
    this.createNewDrawingUsecase,
    this.router,
  ) : super(FileManagementStateX.initial()) {
    on<FileManagementEvent>(
      (event, emit) async {
        await event.map(
          createNewDrawingEvent: (event) async => await _onCreateNewDrawingEvent(event, emit),
          changeDrawingNameEvent: (event) async => await _onChangeDrawingNameEvent(event, emit),
          selectDrawing: (event) async => await _onSelectDrawingEvent(event, emit),
        );
      },
    );
  }

  Future<void> _onCreateNewDrawingEvent(
      FileManagementEventCreateNewDrawing event, Emitter<FileManagementState> emit) async {
    final newDrawingOrFailure = await createNewDrawingUsecase();
  }

  Future<void> _onChangeDrawingNameEvent(
      FileManagementEventChangeDrawingName event, Emitter<FileManagementState> emit) async {
    final failureOrUnit = await changeDrawingNameUsecase(
      event.drawing,
      event.name,
    );
  }

  Future<void> _onSelectDrawingEvent(FileManagementEventSelectDrawing event, Emitter<FileManagementState> emit) async {
    emit(
      state.copyWith(
        selectedDrawing: event.drawing,
      ),
    );
    getIt<DrawingBloc>().add(DrawingEvent.initial(drawing: event.drawing));
    await router.replace(const DrawingRoute());
  }
}
