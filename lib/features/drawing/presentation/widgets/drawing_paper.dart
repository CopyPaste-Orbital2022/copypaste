import '../../../../core/injections/injection.dart';
import 'package:flutter/material.dart';
import 'package:scribble/scribble.dart';

class DrawingPaper extends StatelessWidget {
  const DrawingPaper({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(5, 5), blurRadius: 10),
          ],
        ),
        child: Scribble(
          notifier: getIt<ScribbleNotifier>(),
        ),
      ),
    );
  }
}
