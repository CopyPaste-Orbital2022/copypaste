import '../../../../../core/injections/injection.dart';
import '../../bloc/drawing_bloc/drawing_bloc.dart';
import '../../bloc/selectable_bloc/blocs/eraser_width_bloc.dart';
import '../../bloc/selectable_bloc/selectable_bloc.dart';
import 'eraser_painter.dart';
import 'paints/current_stroke_paint.dart';
import 'paints/strokes_paint.dart';
import 'strokes_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'paints/eraser_paint.dart';

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
