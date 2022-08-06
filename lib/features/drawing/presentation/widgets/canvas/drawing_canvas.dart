import 'package:copypaste/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../../core/injections/injection.dart';
import '../../bloc/drawing_bloc/drawing_bloc.dart';
import 'paints/current_stroke_paint.dart';
import 'paints/strokes_paint.dart';
import 'package:flutter/material.dart';
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
      child: Screenshot(
        controller: getIt<ScreenshotController>(),
        child: Stack(
          children: const [
            StrokesPaint(),
            CurrentStrokePaint(),
            EraserPaint(),
          ],
        ),
      ),
    );
  }
}
