import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/selectable_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_color_picker/my_color_picker.dart';

class ColorMenu<T extends SelectableBloc<Color>> extends StatelessWidget {
  const ColorMenu({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, SelectableState<Color>>(builder: (context, state) {
      return Column(
        children: [
          const SizedBox(height: 8),
          MyColorPickerMenu(
            currentColor: state.get(index),
            onChanged: (color) {
              context.read<T>().add(
                    SelectableEvent<Color>.modifyAt(
                      index,
                      color ?? state.get(index) ?? Colors.black,
                    ),
                  );
            },
          ),
        ],
      );
    });
  }
}
