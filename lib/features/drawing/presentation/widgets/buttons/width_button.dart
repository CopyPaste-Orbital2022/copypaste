import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/selectable_bloc.dart';
import 'package:copypaste/features/drawing/presentation/widgets/menus/width_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_stackable_popup_menu/my_stackable_popup_menu.dart';

class WidthButton<T extends SelectableBloc<double>> extends StatelessWidget {
  const WidthButton({
    Key? key,
    required this.index,
    this.color = Colors.black,
    this.backgroundColor = Colors.white,
    this.size = 24,
  }) : super(key: key);

  final int index;
  final Color color;
  final Color backgroundColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, SelectableState<double>>(
      builder: (context, state) {
        return MyPopupIconButton(
          onPressed: () {
            context.read<T>().add(SelectableEvent<double>.selectAt(index));
          },
          icon: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              _buildIcon(context, state),
              _buildStroke(context, state),
            ],
          ),
          isSelected: state.currentIndex == index,
          menuContent: WidthMenu<T>(index: index),
        );
      },
    );
  }

  Widget _buildIcon(BuildContext context, SelectableState<double> state) {
    if (state.currentIndex == index) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
      );
    } else {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
        ),
      );
    }
  }

  Widget _buildStroke(BuildContext context, SelectableState<double> state) {
    final proportion = state.get(index)! / state.items.maxValue!;
    if (state.currentIndex == index) {
      return Container(
        width: size * proportion,
        height: size * proportion,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      );
    } else {
      return Container(
        width: size * proportion,
        height: size * proportion,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(
            5 * proportion,
          ),
        ),
      );
    }
  }
}
