import 'package:copypaste/core/adaptive/adaptive_elevated_button.dart';
import 'package:copypaste/core/adaptive/adaptive_textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:macos_ui/macos_ui.dart';

Future<void> showAdaptiveDialog(BuildContext context, Widget dialog) async {
  switch (defaultTargetPlatform) {
    case TargetPlatform.macOS:
      await showMacosAlertDialog(
          context: context,
          builder: (context) {
            return dialog;
          });
      return;
    default:
      await showPlatformDialog(
        context: context,
        builder: (context) {
          return dialog;
        },
      );
      return;
  }
}

class AdaptiveDialog extends StatelessWidget {
  const AdaptiveDialog({
    Key? key,
    required this.appIcon,
    required this.title,
    required this.content,
    required this.primaryButton,
    required this.secondaryButton,
  }) : super(key: key);

  /// only shows on macos
  final Widget appIcon;

  final Widget title;
  final Widget content;
  final Widget primaryButton;
  final Widget secondaryButton;

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
        return MacosAlertDialog(
          appIcon: appIcon,
          title: title,
          message: content,
          primaryButton: primaryButton,
          secondaryButton: secondaryButton,
        );
      default:
        return AlertDialog(
          title: title,
          content: content,
          actions: [
            primaryButton,
            secondaryButton,
          ],
        );
    }
  }
}

class AdaptiveTextDialog extends StatefulWidget {
  const AdaptiveTextDialog({
    Key? key,
    required this.appIcon,
    required this.title,
    this.message,
    this.initialText,
    this.primaryButtonChild,
    this.secondaryButtonChild,
    this.onSubmitted,
  }) : super(key: key);

  final String? initialText;

  final Widget title;

  final Widget appIcon;

  final Widget? message;

  final Widget? primaryButtonChild;

  final Widget? secondaryButtonChild;

  final ValueChanged<String>? onSubmitted;

  @override
  State<AdaptiveTextDialog> createState() => _AdaptiveTextDialogState();
}

class _AdaptiveTextDialogState extends State<AdaptiveTextDialog> {
  late TextEditingController _controller;

  late String _text;

  @override
  void initState() {
    _text = widget.initialText ?? '';
    _controller = TextEditingController(
      text: widget.initialText,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildTextField() {
    return AdaptiveTextField(
      hintText: 'Enter text',
      autocorrect: false,
      keyboardType: TextInputType.text,
      controller: _controller,
      onChanged: (text) {
        setState(() {
          _text = text;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveDialog(
      appIcon: widget.appIcon,
      title: widget.title,
      content: Column(
        children: [
          if (widget.message != null) widget.message!,
          _buildTextField(),
        ],
      ),
      primaryButton: AdaptiveElevatedButton(
        child: widget.primaryButtonChild ?? const Text("OK"),
        onPressed: () {
          widget.onSubmitted?.call(_text);
          Navigator.of(context).pop();
        },
      ),
      secondaryButton: AdaptiveElevatedButton(
        child: widget.secondaryButtonChild ?? const Text("Cancel"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
