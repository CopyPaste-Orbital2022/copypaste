import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart';
import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart';
import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/selectable_bloc.dart';
import 'package:copypaste/features/drawing/presentation/widgets/canvas/eraser_painter.dart';
import 'package:copypaste/features/drawing/presentation/widgets/canvas/paints/current_stroke_paint.dart';
import 'package:copypaste/features/drawing/presentation/widgets/canvas/paints/strokes_paint.dart';
import 'package:copypaste/features/drawing/presentation/widgets/canvas/strokes_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawingCanvas extends StatelessWidget {
  const DrawingCanvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) => getIt<DrawingBloc>().add(
        DrawingEvent.pointerDown(event),
      ),
      onPointerMove: (event) => getIt<DrawingBloc>().add(
        DrawingEvent.pointerMove(event),
      ),
      onPointerUp: (event) => getIt<DrawingBloc>().add(
        DrawingEvent.pointerUp(event),
      ),
      onPointerCancel: (event) => getIt<DrawingBloc>().add(
        DrawingEvent.pointerCancel(event),
      ),
      child: Stack(
        children: const [
          StrokesPaint(),
          CurrentStrokePaint(),
          EraserPaint(),
        ],
      ),
    );
  }
}

class EraserPaint extends StatelessWidget {
  const EraserPaint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EraserWidthBloc, EraserWidthState>(
      builder: (eraserContext, eraserState) {
        return BlocBuilder<DrawingBloc, DrawingState>(
          builder: (drawingContext, drawingState) {
            return CustomPaint(
              painter: EraserPainter(
                eraserPosition: drawingState.eraserPosition,
                eraserRadius: eraserState.selected! / 2,
              ),
            );
          },
          buildWhen: (previous, next) =>
              previous.eraserPosition != next.eraserPosition,
        );
      },
      buildWhen: (previous, next) => previous.selected != next.selected,
    );
  }
}
