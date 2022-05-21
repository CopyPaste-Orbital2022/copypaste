import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../bloc/index.dart';

class ColorMenuButton extends StatefulWidget {
  const ColorMenuButton({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<ColorMenuButton> createState() => _ColorMenuButtonState();
}

class _ColorMenuButtonState extends State<ColorMenuButton> {
  Color pickerColor = Colors.white;
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingToolbarBloc, DrawingToolbarState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            if (_getIsSelected(state)) {
              _showColorPickerDialog(context, state);
            } else {
              context.read<DrawingToolbarBloc>().add(
                    DrawingToolbarEvent.changeColorSelectionEvent(widget.index),
                  );
            }
          },
          icon: _buildIcon(context, state),
        );
      },
      listener: (context, state) {},
    );
  }

  /// Returns a Rectangular [IconButton] without border if the color is
  /// not selected
  ///
  /// Returns a Circular [IconButton] with border if the color is
  /// selected
  Widget _buildIcon(BuildContext context, DrawingToolbarState state) {
    try {
      final Color color = context
          .watch<DrawingToolbarBloc>()
          .state
          .penState
          .colors[widget.index];

      if (_getIsSelected(state)) {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 3.0,
            ),
          ),
        );
      } else {
        return Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 1.5,
            ),
          ),
        );
      }
    } on RangeError catch (e) {
      return const SizedBox.shrink();
    }
  }

  /// handles the state change
  void onPressed(
    BuildContext context,
    DrawingToolbarState state,
  ) {
    if (!_getIsSelected(state)) {
      context.watch<DrawingToolbarBloc>().add(
            DrawingToolbarEvent.changeColorSelectionEvent(widget.index),
          );
    } else {
      _showColorPickerDialog(context, state);
    }
  }

  /// returns whether if the current button is selected
  bool _getIsSelected(DrawingToolbarState state) {
    return state.penState.currentColorIdx == widget.index;
  }

  /// shows the color picker dialog
  void _showColorPickerDialog(
    BuildContext outerContext,
    DrawingToolbarState state,
  ) {
    // sets the picker color to the current
    // color
    pickerColor = state.penState.colors[widget.index];
    // sets the selected color to the current
    // color
    selectedColor = pickerColor;
    showDialog(
      context: outerContext,
      builder: (context) {
        return _buildAlertDialog(context, outerContext);
      },
    );
  }

  /// build the alert dialog
  AlertDialog _buildAlertDialog(
      BuildContext context, BuildContext outerContext) {
    return AlertDialog(
      title: const Text("Pick a color!"),
      content: _buildAlertContent(),
      actions: [
        _buildCancelButton(context),
        _buildDeleteButton(context, outerContext),
        _buildSaveButton(context, outerContext),
      ],
    );
  }

  /// the content for the alert button
  Widget _buildAlertContent() {
    return SingleChildScrollView(
      child: ColorPicker(
        pickerColor: pickerColor,
        onColorChanged: (color) {
          selectedColor = color;
        },
      ),
    );
  }

  /// the save button
  Widget _buildSaveButton(BuildContext context, BuildContext outerContext) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
        outerContext.read<DrawingToolbarBloc>().add(
              DrawingToolbarEvent.changeColorValueEvent(
                  widget.index, selectedColor),
            );
      },
      child: const Text("Save"),
    );
  }

  /// the delete button
  Widget _buildDeleteButton(BuildContext context, BuildContext outerContext) {
    if (outerContext.read<DrawingToolbarBloc>().state.penState.colors.length >
        1) {
      return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
          outerContext.read<DrawingToolbarBloc>().add(
                DrawingToolbarEvent.deleteColorEvent(widget.index),
              );
        },
        child: const Text("Delete"),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.error,
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  /// the cancel button
  Widget _buildCancelButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text("Cancel"),
    );
  }
}
