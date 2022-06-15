import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/blocs/current_tool_bloc.dart';
import 'package:copypaste/features/drawing/presentation/enums/drawing_button.dart';
import 'package:copypaste/features/drawing/presentation/widgets/toolbar/drawing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/selectable_bloc.dart';

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
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    PlatformIcons(context).leftChevron,
                    size: 24,
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
              ],
            );
          },
        ),
      ],
    );
  }
}
