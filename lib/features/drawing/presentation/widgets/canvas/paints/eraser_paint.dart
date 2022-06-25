import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/drawing_bloc/drawing_bloc.dart';
import '../../../bloc/selectable_bloc/blocs/eraser_width_bloc.dart';
import '../../../bloc/selectable_bloc/selectable_bloc.dart';
import '../eraser_painter.dart';

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
