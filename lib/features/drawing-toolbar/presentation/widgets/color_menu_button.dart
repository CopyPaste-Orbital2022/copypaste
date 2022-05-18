import 'package:copypaste/features/drawing-toolbar/presentation/bloc/index.dart';
import 'package:flutter/material.dart';

class ColorMenuButton extends StatelessWidget {
  const ColorMenuButton(
      {Key? key, required this.color, required this.isSelected})
      : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
