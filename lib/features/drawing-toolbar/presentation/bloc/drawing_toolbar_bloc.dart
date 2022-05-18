import 'package:bloc/bloc.dart';
import 'package:copypaste/features/drawing-toolbar/domain/repositories/i_drawing_toolbar_repository.dart';
import 'package:injectable/injectable.dart';

import 'drawing_toolbar_event.dart';
import 'drawing_toolbar_state.dart';

@LazySingleton()
class DrawingToolbarBloc
    extends Bloc<DrawingToolbarEvent, DrawingToolbarState> {
  final IDrawingToolBarRepository _repository;
  DrawingToolbarBloc(this._repository)
      : super(DrawingToolbarStateX.initialState()) {
    on<ChangeSelectedDrawingButtonEvent>((event, emit) {
      _repository.saveCurrentTool(event.tool);
      emit(
        state.copyWith(currentTool: event.tool),
      );
    });
  }
}
