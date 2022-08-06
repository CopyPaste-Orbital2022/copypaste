import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class AdaptiveCircularIndicator extends StatelessWidget {
  const AdaptiveCircularIndicator({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
        return ProgressCircle(
          innerColor: color,
        );
      default:
        return CircularProgressIndicator(
          color: color,
        );
    }
  }
}
