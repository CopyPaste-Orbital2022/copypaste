import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/index.dart';

class PenWidthSelectWidth extends StatelessWidget {
  const PenWidthSelectWidth(
    this.width, {
    Key? key,
    required this.isSelected,
    required this.index,
  }) : super(key: key);
  final double width;
  final bool isSelected;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<DrawingPenBloc>(context).add(
          ChangePenStrokeSizeSelectionEvent(index),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          shape: isSelected ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isSelected ? null : BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey,
          ),
          color: Colors.transparent,
        ),
        child: Center(
          child: Container(
            width: width,
            height: width,
            decoration: BoxDecoration(
              shape: isSelected ? BoxShape.circle : BoxShape.rectangle,
              borderRadius:
                  isSelected ? null : BorderRadius.circular(width / 4),
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
