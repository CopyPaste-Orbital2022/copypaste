import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'eraser_event.dart';
import 'eraser_state.dart';

@LazySingleton()
class EraserBloc extends Bloc<EraserEvent, EraserState> {
  EraserBloc() : super(EraserStateX.initial()) {
    on<EraserEvent>((event, emit) {});
  }
}
