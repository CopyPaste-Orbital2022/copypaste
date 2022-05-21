import 'package:copypaste/features/drawing/domain/entities/selectable_tools.dart';
import 'package:copypaste/features/drawing/presentation/widgets/stroke_width/stroke_width_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/drawing_toolbar_bloc.dart';
import '../../bloc/drawing_toolbar_state.dart';

class StrokeWidthMenu extends StatelessWidget {
  const StrokeWidthMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingToolbarBloc, DrawingToolbarState>(
      builder: (context, state) {
        if (state.currentTool == DrawingTool.pen) {
          return Row(
            children: [
              const VerticalDivider(),
              ...state.penState.widths
                  .asMap()
                  .entries
                  .map((e) => StrokeWidthMenuButton(index: e.key)),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
      listener: (context, state) {},
    );
  }
}
