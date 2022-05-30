import '../../../../core/injections/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:scribble/scribble.dart';
import '../widgets/drawing_menubar_content.dart';

class DrawingPage extends StatelessWidget {
  const DrawingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const DrawingMenubarContent(),
      ),
      body: Scribble(
        notifier: getIt<ScribbleNotifier>(),
      ),
    );
  }
}
