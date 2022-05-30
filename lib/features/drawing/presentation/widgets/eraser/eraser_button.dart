import 'dart:async';

import '../../../../../core/utils/icon_paths.dart';
import '../../../domain/entities/drawing_tool.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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
        return Transform.scale(
          scale: 1.5,
          child: MyPopupIconButton(
            padding: const EdgeInsets.all(0),
            isSelected: state.tool == DrawingTool.eraser,
            menuContent: MyPopupMenu(
              child: Container(),
              initialSize: const Size(240, 300),
              sizeController: _sizeController,
            ),
            selectedIcon: SvgPicture.asset(IconPaths.eraserFillPath),
            notSelectedIcon: SvgPicture.asset(IconPaths.eraserOutlinePath),
            onPressed: () {
              context
                  .read<DrawingBloc>()
                  .add(const ChangeToolEvent(DrawingTool.eraser));
            },
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
