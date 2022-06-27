import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/core/routing/app_router.dart';
import '../../bloc/drawing_bloc/drawing_bloc.dart';
import '../../bloc/history_manager_bloc/history_manager_bloc.dart';
import '../../bloc/pen_settings_bloc/pen_settings_bloc.dart';
import '../../bloc/selectable_bloc/blocs/eraser_width_bloc.dart';
import '../../bloc/selectable_bloc/blocs/pen_color_bloc.dart';
import '../../bloc/selectable_bloc/blocs/pen_width_bloc.dart';
import '../buttons/color_button.dart';
import '../buttons/width_button.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/utilities/helpers/platform_helpers.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<CurrentToolBloc>(),
        ),
        BlocProvider.value(
          value: getIt<DrawingBloc>(),
        ),
        BlocProvider.value(
          value: getIt<EraserWidthBloc>(),
        ),
        BlocProvider.value(
          value: getIt<PenColorBloc>(),
        ),
        BlocProvider.value(
          value: getIt<PenWidthBloc>(),
        ),
        BlocProvider.value(
          value: getIt<HistoryManagerBloc>(),
        ),
        BlocProvider.value(
          value: getIt<PenSettingsBloc>(),
        ),
      ],
      child: Stack(
        children: [
          if (platformIsDesktop) MoveWindow(),
          BlocBuilder<CurrentToolBloc, CurrentToolState>(
            builder: (context, state) {
              return Row(
                children: [
                  // if on the desktop, we want to have padding
                  if (platformIsDesktop) const SizedBox(width: 50),
                  PlatformIconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      getIt<AppRouter>().replace(
                        const FileManagementRoute(),
                      );
                    },
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
                  padding: EdgeInsets.zero,
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
                  padding: EdgeInsets.zero,
                ),
                const VerticalDivider(),
                PlatformIconButton(
                  icon: Icon(
                    PlatformIcons(context).share,
                    color: Colors.white,
                    size: 24,
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                ),
                PlatformIconButton(
                  icon: Icon(
                    PlatformIcons(context).ellipsis,
                    color: Colors.white,
                    size: 24,
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                ),
              ],
            );
          })
        ],
      ),
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
