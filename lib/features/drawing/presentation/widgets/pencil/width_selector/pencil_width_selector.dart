import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:copypaste/features/drawing/presentation/widgets/pencil/width_selector/pencil_width_selector_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selectable_items/selectable_items.dart';

class PencilWidthSelector extends StatelessWidget {
  const PencilWidthSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPencilBloc, DrawingPencilState>(
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
    List<PencilWidthSelectWidth> res = [];
    for (int i = 0; i < widths.items.length; i++) {
      res.add(
        PencilWidthSelectWidth(
          widths.items[i],
          index: i,
          isSelected: widths.currentIndex == i,
        ),
      );
    }
    return res;
  }
}
