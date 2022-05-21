import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'core/injections/injection.dart';
import 'features/drawing/presentation/pages/drawing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CopyPaste',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DrawingPage(),
    );
  }
}
