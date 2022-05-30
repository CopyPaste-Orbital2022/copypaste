import '../../../bloc/index.dart';
import 'pen_color_selector_add_color_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selectable_items/selectable_items.dart';

import 'pen_color_selector_color.dart';

class PencilColorSelector extends StatelessWidget {
  const PencilColorSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPenBloc, DrawingPenState>(
      builder: (context, state) {
        return GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: _getColors(state.colors),
        );
      },
      listener: (context, state) {},
    );
  }

  List<Widget> _getColors(SelectableItems<Color> colors) {
    List<Widget> res = [];
    for (int i = 0; i < colors.items.length; i++) {
      res.add(
        PencilColorSelectorColor(
          index: i,
          isSelected: colors.currentIndex == i,
          color: colors.items[i],
        ),
      );
    }
    if (res.length < 15) {
      res.add(const PenColorSelectorAddColorButton());
    }
    return res;
  }
}
