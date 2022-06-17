import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ToggleSettingItem extends StatelessWidget {
  const ToggleSettingItem({
    Key? key,
    required this.label,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  final String label;
  final ValueChanged<bool> onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(label),
            Expanded(child: Container()),
            PlatformSwitch(
              value: value,
              onChanged: onChanged,
            ),
          ],
        ),
      ],
    );
  }
}
