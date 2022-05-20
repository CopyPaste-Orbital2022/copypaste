import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/selectable_tools.dart';
import '../../bloc/index.dart';
import 'color_menu_button.dart';
import 'color_menu_insert_button.dart';

class ColorMenu extends StatelessWidget {
  const ColorMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingToolbarBloc, DrawingToolbarState>(
      builder: (context, state) {
        if (state.currentTool == DrawingTool.pen) {
          return Row(
            children: [
              const VerticalDivider(),
              ...state.penState.colors
                  .asMap()
                  .entries
                  .map(
                    (element) => ColorMenuButton(index: element.key),
                  )
                  .toList(),
              const ColorMenuInsertButton(),
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
