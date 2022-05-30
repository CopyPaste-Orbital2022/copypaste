import 'dart:async';
import 'package:selectable_items/selectable_items.dart';

import '../../../../../core/utils/icon_paths.dart';
import '../../../domain/entities/drawing_tool.dart';
import '../../bloc/index.dart';
import 'pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_popup_menu/my_popup_menu.dart';

class PenButton extends StatelessWidget {
  PenButton({Key? key}) : super(key: key);
  final StreamController<Size> _sizeController =
      StreamController<Size>.broadcast();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingBloc, DrawingState>(
      builder: (context, state) {
        return BlocConsumer<DrawingPenBloc, DrawingPenState>(
          builder: (innerContext, innerState) {
            return Transform.scale(
              scale: 1.5,
              child: MyPopupIconButton(
                padding: const EdgeInsets.all(0),
                selectedIcon: SvgPicture.asset(
                  IconPaths.penFillPath,
                  color: innerState.colors.currentItem,
                ),
                notSelectedIcon: SvgPicture.asset(IconPaths.penOutlinePath),
                isSelected: state.tool == DrawingTool.pencil,
                onPressed: () => _onPressed(innerContext),
                menuContent: MyPopupMenu(
                  child: const PenPopupMenu(),
                  initialSize: getSize(innerContext, innerState),
                  sizeController: _sizeController,
                ),
              ),
            );
          },
          listener: (context, state) {
            _sizeController.add(
              getSize(context, state),
            );
          },
        );
      },
      listener: (context, state) {},
    );
  }

  /// when pressed, sents the current tool to pencil;
  void _onPressed(BuildContext context) {
    context.read<DrawingBloc>().add(const ChangeToolEvent(DrawingTool.pencil));
  }

  Size getSize(BuildContext context, DrawingPenState state) {
    return Size(
        240,
        context.read<DrawingPenBloc>().state.colors.items.length < 15
            ? 300 +
                (context.read<DrawingPenBloc>().state.colors.items.length) ~/
                    5 *
                    48
            : 396);
  }
}
