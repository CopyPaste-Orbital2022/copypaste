import 'package:copypaste/core/utils/platform_helpers.dart';
import 'package:copypaste/features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart';
import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart';
import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/blocs/pen_color_bloc.dart';
import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/blocs/pen_width_bloc.dart';
import 'package:copypaste/features/drawing/presentation/widgets/buttons/color_button.dart';
import 'package:copypaste/features/drawing/presentation/widgets/buttons/width_button.dart';
import 'package:flutter/cupertino.dart';
import '../../bloc/selectable_bloc/blocs/current_tool_bloc.dart';
import '../../enums/drawing_button.dart';
import '../buttons/drawing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import '../../bloc/selectable_bloc/selectable_bloc.dart';

class DrawingPageAppbarTitle extends StatelessWidget {
  const DrawingPageAppbarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<CurrentToolBloc, CurrentToolState>(
          builder: (context, state) {
            return Row(
              children: [
                PlatformIconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    PlatformIcons(context).leftChevron,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                const VerticalDivider(),
                DrawingButton(
                  DrawingButtonType.pen,
                  state.selected == DrawingButtonType.pen,
                ),
                DrawingButton(
                  DrawingButtonType.eraser,
                  state.selected == DrawingButtonType.eraser,
                ),
                if (state.selected == DrawingButtonType.pen)
                  ..._penButtons(context, state),
                if (state.selected == DrawingButtonType.eraser)
                  ..._eraserButtons(context, state),
              ],
            );
          },
        ),
        BlocBuilder<HistoryManagerBloc, HistoryManagerState>(
            builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PlatformIconButton(
                onPressed: state.canUndo
                    ? () => context
                        .read<HistoryManagerBloc>()
                        .add(const HistoryManagerEvent.undo())
                    : null,
                icon: Icon(
                  platformIsMaterial
                      ? Icons.undo
                      : CupertinoIcons.arrow_uturn_left,
                  color: state.canUndo
                      ? Colors.white
                      : Colors.white.withAlpha(128),
                  size: 24,
                ),
              ),
              PlatformIconButton(
                onPressed: state.canRedo
                    ? () => context
                        .read<HistoryManagerBloc>()
                        .add(const HistoryManagerEvent.redo())
                    : null,
                icon: Icon(
                  platformIsMaterial
                      ? Icons.redo
                      : CupertinoIcons.arrow_uturn_right,
                  color: state.canRedo
                      ? Colors.white
                      : Colors.white.withAlpha(128),
                  size: 24,
                ),
              ),
            ],
          );
        })
      ],
    );
  }

  List<Widget> _penButtons(BuildContext context, CurrentToolState state) {
    return [
      const VerticalDivider(),
      for (int i = 0; i < 3; i++) WidthButton<PenWidthBloc>(index: i),
      const VerticalDivider(),
      for (int i = 0; i < 3; i++) ColorButton<PenColorBloc>(index: i),
    ];
  }

  List<Widget> _eraserButtons(BuildContext context, CurrentToolState state) {
    return [
      const VerticalDivider(),
      for (int i = 0; i < 3; i++) WidthButton<EraserWidthBloc>(index: i),
    ];
  }
}
