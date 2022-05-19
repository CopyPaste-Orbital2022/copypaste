import 'color_menu/color_menu.dart';
import 'color_menu/color_menu_button.dart';

import '../../../../core/injections/injection.dart';
import '../bloc/index.dart';
import 'drawing_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawingMenu extends StatelessWidget {
  const DrawingMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DrawingToolbarBloc>(),
      child: Expanded(
        child: Row(
          children: [
            ...DrawingMenuButton.buttons,
            const ColorMenu(),
          ],
        ),
      ),
    );
  }
}
