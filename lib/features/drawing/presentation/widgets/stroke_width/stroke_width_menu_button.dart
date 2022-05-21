import 'package:copypaste/features/drawing/domain/entities/pen_state.dart';
import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/drawing_toolbar_bloc.dart';
import '../../bloc/drawing_toolbar_state.dart';

class StrokeWidthMenuButton extends StatelessWidget {
  const StrokeWidthMenuButton({Key? key, required this.index})
      : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingToolbarBloc, DrawingToolbarState>(
      builder: (context, state) {
        return IconButton(
          onPressed: _onPressed(
            context,
            state,
          ),
          icon: _buildIcon(
            context,
            state,
          ),
        );
      },
      listener: (context, state) {},
    );
  }

  /// builds the icon of the icon
  Widget _buildIcon(BuildContext context, DrawingToolbarState state) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        shape: BoxShape.circle,
        border: _buildBorder(context, state),
      ),
      child: Center(
        child: Container(
          width: getWidth(
            context,
            state.penState.widths[index],
          ),
          height: getHeight(
            context,
            state.penState.widths[index],
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: state.penState.getCurrentColor(),
          ),
        ),
      ),
    );
  }

  BoxBorder? _buildBorder(BuildContext context, DrawingToolbarState state) {
    if (state.penState.currentWidthIdx == index) {
      return Border.all(
        width: 2.0,
        color: Theme.of(context).colorScheme.secondary,
      );
    }
  }

  /// returns the width of the stroke if the width is smaller than the context width, else return the context width
  double getWidth(
    BuildContext context,
    double trueWidth,
  ) {
    if (trueWidth < MediaQuery.of(context).size.width) {
      return trueWidth;
    } else {
      return MediaQuery.of(context).size.width;
    }
  }

  /// returns the width of the stroke if the width is smaller than the context width, else return the context width
  double getHeight(
    BuildContext context,
    double trueHeight,
  ) {
    if (trueHeight < MediaQuery.of(context).size.height) {
      return trueHeight;
    } else {
      return MediaQuery.of(context).size.width;
    }
  }

  void Function() _onPressed(
    BuildContext context,
    DrawingToolbarState state,
  ) {
    return () {
      if (state.penState.currentWidthIdx == index) {
      } else {
        context.read<DrawingToolbarBloc>().add(
              ChangeStrokeWidthSelectionEvent(index),
            );
      }
    };
  }
}
