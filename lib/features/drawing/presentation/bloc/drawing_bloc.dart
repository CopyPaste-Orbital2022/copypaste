import 'package:bloc/bloc.dart';
import 'package:copypaste/features/drawing/domain/entities/pen_state.dart';
import 'package:copypaste/features/drawing/domain/entities/selectable_tools.dart';
import 'package:copypaste/features/drawing/domain/repositories/i_drawing_toolbar_repository.dart';
import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:injectable/injectable.dart';
import 'package:scribble/scribble.dart';

@LazySingleton()
class DrawingBloc extends Bloc<DrawingEvent, DrawingState> {
  final IDrawingToolBarRepository _repository;
  final ScribbleNotifier _notifier;
  DrawingBloc(this._repository, this._notifier)
      : super(DrawingStateX.initialState()) {
    on<ChangeSelectedDrawingButtonEvent>((event, emit) {
      _repository.saveCurrentTool(event.tool);
      emit(
        state.copyWith(currentTool: event.tool),
      );
      if (event.tool == DrawingTool.eraser) {
        _notifier.setEraser();
      } else if (event.tool == DrawingTool.pen) {
        _notifier.setPen();
      } else if (event.tool == DrawingTool.hand) {}
    });
  }
}
