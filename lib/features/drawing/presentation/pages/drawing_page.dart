import '../widgets/drawing_paper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/drawing_menu.dart';
import '../widgets/settings_button.dart';

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
      body: Container(
        color: Colors.grey,
        child: DrawingPaper(
          size: MediaQuery.of(context).size,
        ),
      ),
    );
  }
}
