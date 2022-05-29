import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:flutter/material.dart';
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
                textInputAction: TextInputAction.done,
                controller: _controller,
                onChanged: (text) => setState(() {
                  _text = text;
                }),
                style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xA0000000),
                    fontFamily: "monospace"),
                onSubmitted: (text) => _submidValue(context, text),
              ),
            ),
            const SizedBox(width: 10),
          ],
        );
      },
      listener: (context, state) {
        _text = state.widths.currentItem!.toStringAsFixed(1);
        _controller.text = _text;
      },
    );
  }

  void _submidValue(BuildContext context, String text) {
    setState(() {
      _text = text;
      _controller.text = _text;
    });
    _submitValueCore();
  }

  void _submitValueCore() {
    final double? width = double.tryParse(_text);
    if (width != null && 0 <= width && width <= 32) {
      getIt<DrawingPencilBloc>().add(
        DrawingPencilEvent.changeStrokeSizeValueEvent(double.parse(_text)),
      );
    } else if (width != null && width < 0) {
      getIt<DrawingPencilBloc>().add(
        const DrawingPencilEvent.changeStrokeSizeValueEvent(0.1),
      );
    } else if (width != null && width > 32) {
      getIt<DrawingPencilBloc>().add(
        const DrawingPencilEvent.changeStrokeSizeValueEvent(32),
      );
    }
  }

  @override
  void dispose() {
    _submitValueCore();
    _controller.dispose();
    super.dispose();
  }
}
