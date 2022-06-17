import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:my_stackable_popup_menu/my_stackable_popup_menu.dart';

import 'core/injections/injection.dart';
import 'core/utils/platform_helpers.dart';
import 'features/drawing/presentation/pages/drawing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureMyStackablePopupDependencies();
  await configureInjection(Environment.prod);
  if (platformIsDesktop) {
    doWhenWindowReady(() {
      const initialSize = Size(750, 600);
      appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.alignment = Alignment.center;
      appWindow.show();
    });
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CopyPaste',
      home: DrawingPage(),
    );
  }
}
