import 'package:copypaste/features/drawing/domain/entities/selectable_param.dart';
import 'package:flutter/material.dart';

class SelectableIconMenu<T> extends StatelessWidget {
  const SelectableIconMenu({
    Key? key,
    required this.param,
    required this.paramToIcon,
  }) : super(key: key);

  final SelectableParam<T> param;
  final Widget Function(int index, T param, bool isSelected) paramToIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...param.items.asMap().entries.map((entries) {
          final index = entries.key;
          final item = entries.value;
          return paramToIcon(
            index,
            item,
            param.getIsSelected(index),
          );
        }),
      ],
    );
  }
}
