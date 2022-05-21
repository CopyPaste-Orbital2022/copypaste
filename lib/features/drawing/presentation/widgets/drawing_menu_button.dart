import '../../domain/entities/drawing_tools.dart';
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
  final void Function(BuildContext, DrawingToolbarState)? onFirstPress;
  final void Function(BuildContext, DrawingToolbarState)? onSecondPress;
  final void Function(BuildContext, DrawingToolbarState)? listener;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingToolbarBloc, DrawingToolbarState>(
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
              context.read<DrawingToolbarBloc>().add(
                  DrawingToolbarEvent.changeDrawingButtonSelectionEvent(tool));
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

  static List<Widget> get buttons {
    return const [
      DrawingMenuButton(
        tool: DrawingTool.hand,
      ),
      DrawingMenuButton(
        tool: DrawingTool.pen,
      ),
      DrawingMenuButton(
        tool: DrawingTool.eraser,
      ),
    ];
  }
}
