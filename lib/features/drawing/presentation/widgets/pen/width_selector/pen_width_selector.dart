import '../../../bloc/index.dart';
import 'pen_width_selector_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selectable_items/selectable_items.dart';

class PenWidthSelector extends StatelessWidget {
  const PenWidthSelector({Key? key}) : super(key: key);

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
          children: [
            ..._getWidths(state.widths),
          ],
        );
      },
      listener: (context, state) {},
    );
  }

  List<Widget> _getWidths(SelectableItems<double> widths) {
    List<PenWidthSelectWidth> res = [];
    for (int i = 0; i < widths.items.length; i++) {
      res.add(
        PenWidthSelectWidth(
          widths.items[i],
          index: i,
          isSelected: widths.currentIndex == i,
        ),
      );
    }
    return res;
  }
}
