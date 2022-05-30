import 'package:flutter/material.dart';
import '../../../../../../core/injections/injection.dart';
import '../../../bloc/index.dart';

class PencilColorSelectorColor extends StatelessWidget {
  const PencilColorSelectorColor({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.color,
  }) : super(key: key);
  final int index;
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.deferToChild,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          shape: isSelected ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isSelected ? null : BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
                width: 2, color: isSelected ? Colors.white : Colors.white),
            shape: isSelected ? BoxShape.circle : BoxShape.rectangle,
            borderRadius: isSelected ? null : BorderRadius.circular(10),
          ),
        ),
      ),
      onTap: () {
        getIt<DrawingPenBloc>().add(
          ChangePenStrokeColorSelectionEvent(index),
        );
      },
    );
  }
}
