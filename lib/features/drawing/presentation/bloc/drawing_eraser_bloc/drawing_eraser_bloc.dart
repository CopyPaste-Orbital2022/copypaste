import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';

part "drawing_eraser_state.dart";

part "drawing_eraser_event.dart";

part "drawing_eraser_bloc.freezed.dart";

@LazySingleton()
class DrawingEraserBloc extends Bloc<DrawingEraserEvent, DrawingEraserState> {
  DrawingEraserBloc() : super(DrawingEraserStateX.initial()) {
    on<DrawingEraserEvent>((event, emit) {});
  }
}
