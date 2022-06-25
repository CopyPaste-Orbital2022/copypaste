import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_stackable_popup_menu/my_stackable_popup_menu.dart';

import '../../bloc/selectable_bloc/selectable_bloc.dart';
import '../menus/color_menu.dart';

class ColorButton<T extends SelectableBloc<Color>> extends StatelessWidget {
  const ColorButton({
    Key? key,
    required this.index,
    this.size = 24,
  }) : super(key: key);

  final int index;
  final double size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, SelectableState<Color>>(
      builder: (context, state) {
        return MyPopupIconButton(
          onPressed: () {
            context.read<T>().add(SelectableEvent<Color>.selectAt(index));
          },
          icon: _buildColorIcon(context, state),
          isSelected: state.currentIndex == index,
          menuContent: ColorMenu<T>(index: index),
        );
      },
    );
  }

  Widget _buildColorIcon(BuildContext context, SelectableState<Color> state) {
    if (state.currentIndex == index) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: state.get(index),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
      );
    } else {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: state.get(index),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      );
    }
  }
}
