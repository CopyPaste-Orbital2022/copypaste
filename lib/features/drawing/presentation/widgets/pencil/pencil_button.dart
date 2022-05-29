import 'package:copypaste/features/drawing/domain/entities/drawing_tool.dart';
import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:copypaste/features/drawing/presentation/widgets/pencil/pop_up_menu_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:my_popup_menu/my_popup_menu.dart';

class PencilButton extends StatelessWidget {
  const PencilButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<DrawingBloc, DrawingState>(
        builder: (context, state) {
          return MyPopupIconButton(
            selectedIcon: Icon(PlatformIcons(context).pen),
            notSelectedIcon: Icon(PlatformIcons(context).pen),
            isSelected: state.tool == DrawingTool.pencil,
            onPressed: () => _onPressed(context),
            menuContent: const MyPopupMenu(
              child: PencilPopupMenu(),
              size: Size(240, 300),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }

  /// when pressed, sents the current tool to pencil;
  void _onPressed(BuildContext context) {
    context.read<DrawingBloc>().add(const ChangeToolEvent(DrawingTool.pencil));
  }
}
