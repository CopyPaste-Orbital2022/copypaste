import 'package:copypaste/core/extensions/color_extension.dart';
import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:copypaste/features/drawing/presentation/widgets/pencil/color_selector/pencil_color_selector_delete_color_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:selectable_items/selectable_items.dart';

class PencilWidthSelectorTitle extends StatefulWidget {
  const PencilWidthSelectorTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<PencilWidthSelectorTitle> createState() => _PencilWidthSelectorTitle();
}

class _PencilWidthSelectorTitle extends State<PencilWidthSelectorTitle> {
  late String _text;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _text =
        getIt<DrawingPencilBloc>().state.widths.currentItem!.toStringAsFixed(1);

    _controller = TextEditingController(text: _text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPencilBloc, DrawingPencilState>(
      builder: (context, state) {
        return Row(
          children: [
            const Text(
              "Widths",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: PlatformTextField(
                controller: _controller,
                onChanged: (value) {
                  setState(() {
                    _text = value;
                  });
                },
                style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xA0000000),
                    fontFamily: "monospace"),
                onSubmitted: (text) {
                  getIt<DrawingPencilBloc>().add(
                    DrawingPencilEvent.modifyStrokeSizeEvent(
                        double.parse(text)),
                  );
                  _controller.clear();
                },
              ),
            ),
            const SizedBox(width: 10),
          ],
        );
      },
      listener: (context, state) {
        if (state.widths.currentItem != null) {
          _text = state.widths.currentItem!.toStringAsFixed(1);
          _controller.text = _text;
        }
      },
    );
  }
}
