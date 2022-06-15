import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/drawing_bloc/drawing_bloc.dart';
import '../strokes_painter.dart';

class StrokesPaint extends StatelessWidget {
  const StrokesPaint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawingBloc, DrawingState>(
      builder: (context, state) {
        return CustomPaint(
          painter: StrokesPainter(
            state.strokes,
          ),
          child: Container(
            color: Colors.transparent,
            child: const SizedBox.expand(),
          ),
        );
      },
      buildWhen: (previous, next) => previous.strokes != next.strokes,
    );
  }
}
