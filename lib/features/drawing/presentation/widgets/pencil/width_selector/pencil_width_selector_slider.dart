import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:selectable_items/selectable_items.dart';

class PencilWidthSelectorSlider extends StatefulWidget {
  const PencilWidthSelectorSlider({Key? key}) : super(key: key);

  @override
  State<PencilWidthSelectorSlider> createState() =>
      _PencilWidthSelectorSliderState();
}

class _PencilWidthSelectorSliderState extends State<PencilWidthSelectorSlider> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = getIt<DrawingPencilBloc>().state.widths.currentItem!;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPencilBloc, DrawingPencilState>(
      builder: (context, state) {
        return Flexible(
          child: PlatformSlider(
            min: 0,
            max: 32,
            value: _value,
            onChanged: (newValue) {
              setState(() {
                _value = newValue;
              });
              context.read<DrawingPencilBloc>().add(
                    DrawingPencilEvent.changeStrokeSizeValueEvent(newValue),
                  );
            },
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
