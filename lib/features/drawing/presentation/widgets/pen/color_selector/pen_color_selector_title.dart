import '../../../../../../core/extensions/color_extension.dart';
import '../../../../../../core/injections/injection.dart';
import '../../../bloc/index.dart';
import 'pen_color_selector_delete_color_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:selectable_items/selectable_items.dart';

class PencilColorSelectorTitle extends StatefulWidget {
  const PencilColorSelectorTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<PencilColorSelectorTitle> createState() =>
      _PencilColorSelectorTitleState();
}

class _PencilColorSelectorTitleState extends State<PencilColorSelectorTitle> {
  late String _text;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _text = getIt<DrawingPenBloc>().state.colors.currentItem!.toHex(
          leadingHashSign: false,
        );

    _controller = TextEditingController(text: _text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPenBloc, DrawingPenState>(
      builder: (context, state) {
        return Row(
          children: [
            const Text(
              "Colors",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              width: 30,
            ),
            const Text(
              "#",
              style: TextStyle(fontSize: 16, color: Color(0x80000000)),
            ),
            Flexible(
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
                  getIt<DrawingPenBloc>().add(
                    DrawingPenEvent.changePencilCurrentColorValueEvent(
                      HexColor.fromHex(_text),
                    ),
                  );
                  _controller.clear();
                },
              ),
            ),
            const SizedBox(width: 10),
            const PencilColorSelectorDeleteColorButton(),
          ],
        );
      },
      listener: (context, state) {
        if (state.colors.currentItem != null) {
          _text = state.colors.currentItem!.toHex(
            leadingHashSign: false,
          );
          _controller.text = _text;
        }
      },
    );
  }
}
