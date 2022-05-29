import 'dart:async';

import 'package:copypaste/features/drawing/domain/entities/drawing_tool.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:my_popup_menu/my_popup_menu.dart';

import '../../bloc/index.dart';

class EraserButton extends StatelessWidget {
  EraserButton({Key? key}) : super(key: key);
  final StreamController<Size> _sizeController =
      StreamController<Size>.broadcast();
  @override
  Widget build(BuildContext context) {
    // bloc consumer of drawing eraser bloc
    return BlocConsumer<DrawingBloc, DrawingState>(
      builder: (context, state) {
        return MyPopupIconButton(
          isSelected: state.tool == DrawingTool.eraser,
          menuContent: MyPopupMenu(
            child: Container(),
            initialSize: const Size(240, 300),
            sizeController: _sizeController,
          ),
          selectedIcon: Icon(PlatformIcons(context).remove),
          notSelectedIcon: Icon(PlatformIcons(context).remove),
          onPressed: () {
            context
                .read<DrawingBloc>()
                .add(const ChangeToolEvent(DrawingTool.eraser));
          },
        );
      },
      listener: (context, state) {},
    );
  }
}
