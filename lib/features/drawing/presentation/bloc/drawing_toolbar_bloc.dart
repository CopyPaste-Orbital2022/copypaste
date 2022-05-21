import 'package:bloc/bloc.dart';
import '../../../../core/extensions/scribble_extension.dart';
import '../../domain/entities/selectable_param.dart';
import 'package:injectable/injectable.dart';
import 'package:scribble/scribble.dart';

import '../../domain/repositories/i_drawing_toolbar_repository.dart';
import 'drawing_toolbar_event.dart';
import 'drawing_toolbar_state.dart';

@LazySingleton()
class DrawingToolbarBloc
    extends Bloc<DrawingToolbarEvent, DrawingToolbarState> {
  final IDrawingToolBarRepository _repository;
  final ScribbleNotifier _scribbleNotifier;
  DrawingToolbarBloc(this._repository, this._scribbleNotifier)
      : super(DrawingToolbarStateX.initialState()) {
    on<DrawingToolbarEvent>((event, emit) {
      event.map(
        changeDrawingButtonSelectionEvent:
            getChangeDrawingButtonSelectionEventHandler(emit),
        changeColorSelectionEvent: getChangeColorSelectionEventHandler(emit),
        changeColorValueEvent: getChangeColorValueEventHandler(emit),
        addColorEvent: getAddColorEventHanlder(emit),
        deleteColorEvent: getDeleteColorEventHandler(emit),
        changeStrokeWidthSelectionEvent:
            getChangeStrokeWidthSelectionEventHandler(emit),
        changeEraserWidthSelectionEvent:
            getChangeEraserWidthSelectionEventHandler(emit),
        changeEraserWidthValueEvent:
            getChangeEraserWidthValueEventHandler(emit),
        toggleUseStylusEvent: getToggleUseStylusEventHandler(emit),
      );
    });
  }

  /// Creates the handler for the change drawing button selection event
  Function(ChangeDrawingButtonSelectionEvent)
      getChangeDrawingButtonSelectionEventHandler(
    Emitter<DrawingToolbarState> emit,
  ) {
    return (ChangeDrawingButtonSelectionEvent event) {
      _repository.saveCurrentTool(event.tool);
      final newState = state.copyWith(
        currentTool: event.tool,
      );
      emit(newState);
      // updates the [ScribbleNotifier]
      _updateScribbleWithState(newState);
    };
  }

  /// Creates the handler for the change color selection event
  Function(ChangeColorSelectionEvent) getChangeColorSelectionEventHandler(
    Emitter<DrawingToolbarState> emit,
  ) {
    return (ChangeColorSelectionEvent event) {
      final PenColorSelectable penColorSelectable = state.penColorSelectable
          .select(event.colorIndex) as PenColorSelectable;
      // save the new color selection
      _repository.savePenColorSelectable(penColorSelectable);
      // emits the state with the new color selection
      final newState = state.copyWith(
        penColorSelectable: penColorSelectable,
      );
      emit(newState);
      // updates the [ScribbleNotifier]
      _updateScribbleWithState(newState);
    };
  }

  /// Creates the handler for the change color value event
  Function(ChangeColorValueEvent) getChangeColorValueEventHandler(
    Emitter<DrawingToolbarState> emit,
  ) {
    return (ChangeColorValueEvent event) {
      final PenColorSelectable penColorSelectable =
          state.penColorSelectable.modify(
        index: event.colorIndex,
        value: event.currentColor,
      ) as PenColorSelectable;
      // save the new color selection
      _repository.savePenColorSelectable(penColorSelectable);
      // emits the state with the new color selection
      final newState = state.copyWith(
        penColorSelectable: penColorSelectable,
      );
      emit(newState);
      // updates the [ScribbleNotifier]
      _updateScribbleWithState(newState);
    };
  }

  /// Creates the handler for the add color event
  Function(AddColorEvent) getAddColorEventHanlder(
    Emitter<DrawingToolbarState> emit,
  ) {
    return (AddColorEvent event) {
      final PenColorSelectable penColorSelectable = state.penColorSelectable
          .addItem(item: event.color) as PenColorSelectable;

      // save the new color selection
      _repository.savePenColorSelectable(penColorSelectable);
      // emits the state with the new color selection
      final newState = state.copyWith(
        penColorSelectable: penColorSelectable,
      );
      emit(newState);
      // updates the [ScribbleNotifier]
      _updateScribbleWithState(newState);
    };
  }

  /// Creates the handler for the delete color event
  Function(DeleteColorEvent) getDeleteColorEventHandler(
    Emitter<DrawingToolbarState> emit,
  ) {
    return (DeleteColorEvent event) {
      final PenColorSelectable penColorSelectable = state.penColorSelectable
          .removeItem(index: event.colorIndex) as PenColorSelectable;
      // save the new color selection
      _repository.savePenColorSelectable(penColorSelectable);
      // emits the state with the new color selection
      final newState = state.copyWith(
        penColorSelectable: penColorSelectable,
      );
      emit(newState);
      // updates the [ScribbleNotifier]
      _updateScribbleWithState(newState);
    };
  }

  /// Creates the handler for the change stroke width selection event
  Function(ChangeStrokeWidthSelectionEvent)
      getChangeStrokeWidthSelectionEventHandler(
    Emitter<DrawingToolbarState> emit,
  ) {
    return (ChangeStrokeWidthSelectionEvent event) {
      final PenWidthSelectable penWidthSelectable = state.penWidthSelectable
          .select(event.widthIndex) as PenWidthSelectable;
      // save the new width selection
      _repository.savePenWidthSelectable(penWidthSelectable);
      // emits the state with the new width selection
      final newState = state.copyWith(
        penWidthSelectable: penWidthSelectable,
      );
      emit(state);
      // updates the [ScribbleNotifier]
      _updateScribbleWithState(state);
    };
  }

  /// Creates the handler for the change eraser width selection event
  Function(ChangeEraserWidthSelectionEvent)
      getChangeEraserWidthSelectionEventHandler(
    Emitter<DrawingToolbarState> emit,
  ) {
    return (ChangeEraserWidthSelectionEvent event) {
      final EraserWidthSelectable eraserWidthSelectable =
          state.eraserWidthSelectable.select(event.widthIndex)
              as EraserWidthSelectable;
      // save the new width selection
      _repository.saveEraserWidthSelectable(eraserWidthSelectable);
      // emits the state with the new width selection
      final newState = state.copyWith(
        eraserWidthSelectable: eraserWidthSelectable,
      );
      emit(newState);
      // updates the [ScribbleNotifier]
      _updateScribbleWithState(state);
    };
  }

  /// Creates the handler for the change eraser width value event
  Function(ChangeEraserWidthValueEvent) getChangeEraserWidthValueEventHandler(
    Emitter<DrawingToolbarState> emit,
  ) {
    return (ChangeEraserWidthValueEvent event) {
      final EraserWidthSelectable eraserWidthSelectable =
          state.eraserWidthSelectable.modify(
        index: event.widthIndex,
        value: event.width,
      ) as EraserWidthSelectable;
      // save the new width selection
      _repository.saveEraserWidthSelectable(eraserWidthSelectable);
      // emits the state with the new width selection
      final newState = state.copyWith(
        eraserWidthSelectable: eraserWidthSelectable,
      );
      emit(newState);
      // updates the [ScribbleNotifier]
      _updateScribbleWithState(newState);
    };
  }

  /// Creates the handler for change use stylus event
  Function(ToggleUseStylusEvent) getToggleUseStylusEventHandler(
    Emitter<DrawingToolbarState> emit,
  ) {
    return (ToggleUseStylusEvent event) {
      // save the new use stylus selection
      _repository.saveUseStylus(!state.useStylus);
      // emits the state with the new use stylus selection
      final newState = state.copyWith(
        useStylus: !state.useStylus,
      );
      emit(newState);
      // updates the [ScribbleNotifier]
      _updateScribbleWithState(newState);
    };
  }

  void _updateScribbleWithState(DrawingToolbarState state) {
    _scribbleNotifier.switchTo(
      tool: state.currentTool,
      useStylus: state.useStylus,
      eraserWidthSelectable: state.eraserWidthSelectable,
      penColorSelectable: state.penColorSelectable,
      penWidthSelectable: state.penWidthSelectable,
    );
  }
}
