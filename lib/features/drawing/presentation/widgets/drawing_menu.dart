import 'package:copypaste/features/drawing/domain/entities/drawing_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injections/injection.dart';
import '../bloc/index.dart';
import 'color_menu.dart';
import 'drawing_menu_button.dart';

class DrawingMenu extends StatelessWidget {
  const DrawingMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<DrawingToolbarBloc>(),
        child: BlocConsumer<DrawingToolbarBloc, DrawingToolbarState>(
          builder: (context, state) {
            return Expanded(
              child: Row(
                children: [
                  ...DrawingMenuButton.buttons,
                  if (state.currentTool == DrawingTool.pen) const ColorMenu(),
                ],
              ),
            );
          },
          listener: (context, state) {},
        ));
  }
}
