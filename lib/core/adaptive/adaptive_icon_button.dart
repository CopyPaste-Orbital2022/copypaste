import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:macos_ui/macos_ui.dart';

class AdaptiveIconButton extends StatelessWidget {
  const AdaptiveIconButton({Key? key, this.onPressed, required this.icon, this.padding = EdgeInsets.zero})
      : super(key: key);

  final VoidCallback? onPressed;

  final Widget icon;

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
        return MacosIconButton(
          icon: icon,
          onPressed: onPressed,
          padding: padding,
        );
      default:
        return PlatformIconButton(
          icon: icon,
          onPressed: onPressed,
          padding: padding,
        );
    }
  }
}
