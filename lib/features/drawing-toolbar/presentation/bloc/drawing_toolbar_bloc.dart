import 'package:bloc/bloc.dart';
import 'package:copypaste/features/drawing-toolbar/domain/repositories/i_drawing_toolbar_repository.dart';
import 'package:copypaste/features/drawing-toolbar/presentation/bloc/index.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DrawingBloc extends Bloc<DrawingEvent, DrawingState> {
  final IDrawingToolBarRepository _repository;
  DrawingBloc(this._repository) : super(DrawingStateX.initialState()) {
    on<ChangeSelectedDrawingButtonEvent>((event, emit) {
      _repository.saveCurrentTool(event.tool);
      emit(
        state.copyWith(currentTool: event.tool),
      );
    });
  }
}
