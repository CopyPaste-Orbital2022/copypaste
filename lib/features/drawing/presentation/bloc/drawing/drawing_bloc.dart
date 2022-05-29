import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'drawing_event.dart';
import 'drawing_state.dart';

@LazySingleton()
class DrawingBloc extends Bloc<DrawingEvent, DrawingState> {
  DrawingBloc() : super(DrawingStateX.initial()) {
    on<DrawingEvent>((event, emit) {
      
    });
  }
}
