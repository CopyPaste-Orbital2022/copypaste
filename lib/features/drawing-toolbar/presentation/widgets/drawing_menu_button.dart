import 'package:copypaste/features/drawing-toolbar/domain/entities/selectable_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/index.dart';

/// The button in the menu
///
/// [tool] the type of tool that this menu button holds
///
/// [onFirstPress] action when the user press a select button, note that no
/// need to write state management code;
///
/// [onSecondPress] action when the user press an unselected button
///
/// [listener] the listener function, if listening is neededs
class DrawingMenuButton extends StatelessWidget {
  const DrawingMenuButton({
    Key? key,
    required this.tool,
    this.onFirstPress,
    this.onSecondPress,
    this.listener,
  }) : super(
          key: key,
        );
  final DrawingTool tool;
  final void Function(BuildContext, DrawingState)? onFirstPress;
  final void Function(BuildContext, DrawingState)? onSecondPress;
  final void Function(BuildContext, DrawingState)? listener;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingBloc, DrawingState>(
      builder: (context, state) {
        if (state.currentTool == tool) {
          return IconButton(
            onPressed: () {
              if (onSecondPress != null) onSecondPress!(context, state);
            },
            icon: Container(
              alignment: Alignment.center,
              child: Icon(
                tool.icon,
                color: Theme.of(context).colorScheme.primary,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          );
        } else {
          return IconButton(
            onPressed: () {
              context
                  .read<DrawingBloc>()
                  .add(DrawingEvent.changeSelectedDrawingButtonEvent(tool));
              if (onFirstPress != null) onFirstPress!(context, state);
            },
            icon: Icon(
              tool.icon,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          );
        }
      },
      listener: (context, state) {
        if (listener != null) listener!(context, state);
      },
    );
  }
}
