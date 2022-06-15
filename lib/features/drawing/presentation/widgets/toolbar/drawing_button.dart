import 'package:copypaste/features/drawing/presentation/enums/drawing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_stackable_popup_menu/my_stackable_popup_menu.dart';

import '../../../../../core/injections/injection.dart';
import '../../bloc/selectable_bloc/blocs/current_tool_bloc.dart';

class DrawingButton extends StatelessWidget {
  const DrawingButton(
    this.type,
    this.isSelected, {
    Key? key,
  }) : super(key: key);

  /// the type of the button
  final DrawingButtonType type;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.2,
      child: MyPopupIconButton(
        padding: EdgeInsets.zero,
        icon: SvgPicture.asset(
          isSelected ? type.selectedIconPath : type.notSelectedIconPath,
          width: 24,
          height: 24,
          color: Colors.white,
        ),
        onPressed: () {
          getIt<CurrentToolBloc>().add(
            CurrentToolEvent.select(type),
          );
        },
        isSelected: isSelected,
        menuContent: type.menuContent,
      ),
    );
  }
}
