import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing/domain/entities/selectable_param.dart';
import 'package:copypaste/features/drawing/presentation/widgets/selectable_icon_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../bloc/drawing_toolbar_bloc.dart';
import '../bloc/drawing_toolbar_event.dart';
import '../bloc/drawing_toolbar_state.dart';

class ColorMenu extends StatefulWidget {
  const ColorMenu({Key? key}) : super(key: key);

  @override
  State<ColorMenu> createState() => _ColorMenuState();
}

class _ColorMenuState extends State<ColorMenu> {
  Color pickerColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingToolbarBloc, DrawingToolbarState>(
      builder: (context, state) {
        return Row(
          children: [
            const VerticalDivider(),
            SelectableIconMenu<Color>(
              param: state.penColorSelectable,
              paramToIcon: _paramToIcon(
                context,
                state,
              ),
            ),
            if (state.penColorSelectable.isAddable)
              _buildAddColorButton(context, state.penColorSelectable.index),
          ],
        );
      },
      listener: (context, state) {},
    );
  }

  /// converts a [Color] to an [Widget] that is put inside the [IconButton]
  Widget Function(int, Color, bool) _paramToIcon(
    BuildContext context,
    DrawingToolbarState state,
  ) {
    return (index, color, isSelected) {
      return IconButton(
        onPressed: () {
          if (!isSelected) {
            context.read<DrawingToolbarBloc>().add(
                  DrawingToolbarEvent.changeColorSelectionEvent(index),
                );
          } else {
            pickerColor = state.penColorSelectable.selectedItem;
            _showColorPickerDialog(context, index);
          }
        },
        icon: Container(
          decoration: BoxDecoration(
            color: color,
            shape: isSelected ? BoxShape.circle : BoxShape.rectangle,
            borderRadius: isSelected ? null : BorderRadius.circular(10),
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimary,
              width: isSelected ? 3.0 : 1.5,
            ),
          ),
        ),
      );
    };
  }

  void _showColorPickerDialog(BuildContext outerContext, int index,
      {bool isAdding = false}) {
    showDialog(
      context: outerContext,
      builder: (context) {
        return _buildAlertDialog(index, isAdding);
      },
    );
  }

  AlertDialog _buildAlertDialog(
    int index,
    bool isAdding,
  ) {
    final deleteButton = _buildDeleteButton(index);
    return AlertDialog(
      title: const Text("Color Changer"),
      content: ColorPicker(
        pickerColor: pickerColor,
        onColorChanged: (selectedColor) {
          pickerColor = selectedColor;
        },
      ),
      actions: [
        _buildCancelButton(),
        if (deleteButton != null && !isAdding) deleteButton,
        _buildSubmitButton(index, isAdding),
      ],
    );
  }

  Widget _buildSubmitButton(int index, isAdding) {
    final bloc = getIt<DrawingToolbarBloc>();
    return ElevatedButton(
      onPressed: () {
        if (isAdding) {
          bloc.add(
            DrawingToolbarEvent.addColorEvent(pickerColor),
          );
        } else {
          bloc.add(
            DrawingToolbarEvent.changeColorValueEvent(index, pickerColor),
          );
        }
        Navigator.of(context).pop();
      },
      child: const Text("Submit"),
    );
  }

  Widget? _buildDeleteButton(int index) {
    return ElevatedButton(
      onPressed: () {
        getIt<DrawingToolbarBloc>().add(
          DrawingToolbarEvent.deleteColorEvent(index),
        );
        Navigator.of(context).pop();
      },
      child: const Text("Delete"),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Theme.of(context).colorScheme.error,
        ),
      ),
    );
  }

  Widget _buildCancelButton() {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text("Cancel"),
    );
  }

  Widget _buildAddColorButton(BuildContext context, int index) {
    return IconButton(
      onPressed: () {
        _showColorPickerDialog(
          context,
          index,
          isAdding: true,
        );
      },
      icon: const Icon(Icons.add),
    );
  }
}
