import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// The dialog that modifies the any text
///
/// [dialogContext] the context to be passed in, needs this to pop the context
///
/// [title] the title of the dialog
///
/// [description] the description of the dialog, when not given, will not be displayed
///
/// [initialText] the initialText of the dialog
///
/// [onSubmit] the callback when the dialog is submitted
class ModifyTextDialog extends StatefulWidget {
  const ModifyTextDialog({
    Key? key,
    required this.dialogContext,
    required this.title,
    this.initialText,
    this.description,
    this.onSubmit,
  }) : super(key: key);

  final BuildContext dialogContext;
  final Widget title;
  final Widget? description;
  final String? initialText;
  final ValueChanged<String>? onSubmit;

  @override
  State<ModifyTextDialog> createState() => _ModifyTextDialogState();

  /// The function that shows the dialog
  static Future<void> show({
    required BuildContext context,
    required Widget title,
    String? initialText,
    Widget? description,
    ValueChanged<String>? onSubmit,
  }) {
    return showDialog(
      context: context,
      builder: (dialogContext) {
        return ModifyTextDialog(
          dialogContext: dialogContext,
          title: title,
          initialText: initialText,
          description: description,
          onSubmit: onSubmit,
        );
      },
    );
  }
}

class _ModifyTextDialogState extends State<ModifyTextDialog> {
  late TextEditingController controller;
  late String text;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.initialText ?? "");
    text = widget.initialText ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return PlatformAlertDialog(
      title: Column(
        children: [
          widget.title,
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      content: Column(
        children: [
          if (widget.description != null) widget.description!,
          PlatformTextField(
            controller: controller,
            onChanged: (newValue) {
              setState(() {
                text = newValue;
              });
            },
            hintText: "Enter New Name Here",
          ),
        ],
      ),
      actions: [
        PlatformTextButton(
          child: PlatformText(
            "Cancel",
            style: const TextStyle(color: Colors.red),
          ),
          onPressed: () {
            Navigator.pop(widget.dialogContext);
          },
        ),
        PlatformTextButton(
          child: PlatformText(
            "Submit",
            style: const TextStyle(color: Colors.blue),
          ),
          onPressed: () {
            widget.onSubmit?.call(text);
            Navigator.pop(widget.dialogContext);
          },
        ),
      ],
    );
  }
}
