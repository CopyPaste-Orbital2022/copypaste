import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../bloc/index.dart';

class ColorMenuInsertButton extends StatefulWidget {
  const ColorMenuInsertButton({Key? key}) : super(key: key);

  @override
  State<ColorMenuInsertButton> createState() => _ColorMenuInsertButtonState();
}

class _ColorMenuInsertButtonState extends State<ColorMenuInsertButton> {
  Color pickerColor = Colors.white;
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingToolbarBloc, DrawingToolbarState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () => _showColorPickerDialog(context, state),
          icon: const Icon(Icons.add),
        );
      },
      listener: (context, state) {},
    );
  }

  void _showColorPickerDialog(
    BuildContext outerContext,
    DrawingToolbarState state,
  ) {
    // sets the selected color to the current
    // color
    showDialog(
      context: outerContext,
      builder: (context) {
        return AlertDialog(
          title: const Text("Pick a color!"),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: (color) {
                selectedColor = color;
              },
            ),
          ),
          actions: [
            // Cancel button, does not save
            // the current color
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            // Save button: saves the current
            // color
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                outerContext.read<DrawingToolbarBloc>().add(
                      DrawingToolbarEvent.addColorEvent(selectedColor),
                    );
              },
              child: const Text("Save"),
            )
          ],
        );
      },
    );
  }
}
