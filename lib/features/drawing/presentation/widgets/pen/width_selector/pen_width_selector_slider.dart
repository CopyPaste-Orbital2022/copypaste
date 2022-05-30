import '../../../../../../core/injections/injection.dart';
import '../../../bloc/index.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:selectable_items/selectable_items.dart';

class PenWidthSelectorSlider extends StatefulWidget {
  const PenWidthSelectorSlider({Key? key}) : super(key: key);

  @override
  State<PenWidthSelectorSlider> createState() => _PenWidthSelectorSliderState();
}

class _PenWidthSelectorSliderState extends State<PenWidthSelectorSlider> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = getIt<DrawingPenBloc>().state.widths.currentItem!;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPenBloc, DrawingPenState>(
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
              context.read<DrawingPenBloc>().add(
                    DrawingPenEvent.changeStrokeSizeValueEvent(newValue),
                  );
            },
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
