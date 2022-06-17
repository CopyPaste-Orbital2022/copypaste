import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SliderSettingItem extends StatelessWidget {
  const SliderSettingItem({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
    required this.min,
    required this.max,
    this.precision = 2,
  }) : super(key: key);
  final String label;
  final double value;
  final ValueChanged<double> onChanged;
  final int precision;
  final double min;
  final double max;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: ${value.toStringAsFixed(precision)}'),
        const SizedBox(height: 8),
        PlatformSlider(
          min: min,
          max: max,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
