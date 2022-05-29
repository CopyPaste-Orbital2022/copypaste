import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';

part "drawing_state.dart";

part "drawing_event.dart";

part "drawing_bloc.freezed.dart";

@LazySingleton()
class DrawingBloc extends Bloc<DrawingEvent, DrawingState> {
  DrawingBloc() : super(DrawingStateX.initial()) {
    on<DrawingEvent>((event, emit) {});
  }
}