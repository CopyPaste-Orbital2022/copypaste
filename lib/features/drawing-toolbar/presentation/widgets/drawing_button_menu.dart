import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing-toolbar/domain/entities/selectable_tools.dart';
import 'package:copypaste/features/drawing-toolbar/presentation/bloc/index.dart';
import 'package:copypaste/features/drawing-toolbar/presentation/widgets/drawing_menu_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawingButtonMenu extends StatelessWidget {
  const DrawingButtonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DrawingToolbarBloc>(),
      child: Expanded(
        child: Row(
          children: const [
            DrawingMenuButton(
              tool: DrawingTool.hand,
            ),
            DrawingMenuButton(
              tool: DrawingTool.pen,
            ),
            DrawingMenuButton(
              tool: DrawingTool.eraser,
            ),
          ],
        ),
      ),
    );
  }
}
