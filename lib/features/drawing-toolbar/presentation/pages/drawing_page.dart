import 'package:copypaste/features/drawing-toolbar/presentation/widgets/settings_button.dart';
import 'package:flutter/material.dart';

import '../widgets/drawing_menu.dart';

class DrawingPage extends StatelessWidget {
  const DrawingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SettingsButton(),
          VerticalDivider(),
          DrawingMenu(),
        ],
      ),
      body: const Center(
        child: Text("To Be Implemented"),
      ),
    );
  }
}
