import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:macos_ui/macos_ui.dart';

class AdaptiveElevatedButton extends StatelessWidget {
  const AdaptiveElevatedButton({
    Key? key,
    required this.color,
    required this.padding,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  final Color color;

  final EdgeInsetsGeometry padding;

  final VoidCallback? onPressed;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
        return PushButton(
          child: child,
          buttonSize: ButtonSize.large,
          onPressed: onPressed,
          color: color,
          padding: padding,
        );
      default:
        return PlatformElevatedButton(
          color: color,
          padding: padding,
          onPressed: onPressed,
          child: child,
        );
    }
  }
}
