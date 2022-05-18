import 'package:copypaste/features/drawing-toolbar/presentation/widgets/drawing_button_menu.dart';
import 'package:flutter/material.dart';

class DrawingPage extends StatelessWidget {
  const DrawingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          DrawingButtonMenu(),
        ],
      ),
      body: const Center(
        child: Text("To Be Implemented"),
      ),
    );
  }
}
