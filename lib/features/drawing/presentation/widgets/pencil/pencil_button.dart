import 'dart:async';

import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing/domain/entities/drawing_tool.dart';
import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:copypaste/features/drawing/presentation/widgets/pencil/pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:my_popup_menu/my_popup_menu.dart';

class PencilButton extends StatelessWidget {
  PencilButton({Key? key}) : super(key: key);
  final StreamController<Size> _sizeController =
      StreamController<Size>.broadcast();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingBloc, DrawingState>(
      builder: (context, state) {
        return BlocConsumer<DrawingPencilBloc, DrawingPencilState>(
          builder: (context, innerState) {
            return MyPopupIconButton(
              selectedIcon: Icon(PlatformIcons(context).pen),
              notSelectedIcon: Icon(PlatformIcons(context).pen),
              isSelected: state.tool == DrawingTool.pencil,
              onPressed: () => _onPressed(context),
              menuContent: MyPopupMenu(
                child: const PencilPopupMenu(),
                initialSize: getSize(context, innerState),
                sizeController: _sizeController,
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

  Size getSize(BuildContext context, DrawingPencilState state) {
    return Size(
        240,
        context.read<DrawingPencilBloc>().state.colors.items.length < 15
            ? 300 +
                (context.read<DrawingPencilBloc>().state.colors.items.length) ~/
                    5 *
                    48
            : 396);
  }
}
