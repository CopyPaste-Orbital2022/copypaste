import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'drawing_state.dart';
import 'drawing_event.dart';

class DrawingBloc extends Bloc<DrawingEvent, DrawingState> {
  DrawingBloc() : super(const DrawingState.initialState()) {
    on<DrawingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
