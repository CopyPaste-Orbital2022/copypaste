import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ModifyNameDialog extends StatefulWidget {
  const ModifyNameDialog({
    Key? key,
    required this.dialogContext,
    this.title,
    this.initialText,
  }) : super(key: key);

  final BuildContext dialogContext;
  final Widget? title;
  final String? initialText;

  @override
  State<ModifyNameDialog> createState() => _ModifyNameDialogState();
}

class _ModifyNameDialogState extends State<ModifyNameDialog> {
  late TextEditingController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController(text: widget.initialText ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return PlatformAlertDialog(
      title: widget.title,
      content: PlatformTextField(
        controller: controller,
      ),
      actions: [
        PlatformTextButton(
          child: PlatformText("Cancel"),
          onPressed: () {},
        ),
        PlatformElevatedButton(
          child: PlatformText("Submit"),
          onPressed: () {},
        ),
      ],
    );
  }
}
