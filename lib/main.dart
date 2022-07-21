import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_stackable_popup_menu/my_stackable_popup_menu.dart';
import 'core/injections/injection.dart';
import 'core/routing/app_router.dart';
import 'core/utilities/helpers/platform_helpers.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (defaultTargetPlatform == TargetPlatform.windows || defaultTargetPlatform == TargetPlatform.linux) {
    // Initialize FFI
    sqfliteFfiInit();
  }
  databaseFactory = databaseFactoryFfi;
  await configureMyStackablePopupDependencies();
  await configureInjection(Environment.prod);
  await Hive.initFlutter();

  if (platformIsDesktop) {
    doWhenWindowReady(() {
      const initialSize = Size(750, 700);
      appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.alignment = Alignment.center;
      appWindow.show();
    });
  }

  /// initialize drawing event
  getIt<AuthBloc>().add(const AuthEvent.updateUserState());
  runApp(const AppContainer());
}

class AppContainer extends StatelessWidget {
  const AppContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<AuthBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
        routerDelegate: getIt<AppRouter>().delegate(),
        theme: Theme.of(context).copyWith(
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(width: 1, color: Color(0xFFF5BC00)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(width: 2, color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(width: 1, color: Color(0xFFF5BC00)),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(width: 1, color: Color(0xFFF5BC00)),
              ),
              filled: true,
              fillColor: const Color(0xFFF5BC00),
              focusColor: Colors.yellow,
              prefixIconColor: Colors.white,
              iconColor: Colors.white,
              hintStyle: const TextStyle(color: Color(0x80FFFFFF)),
            ),
            colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: const Color(0xFFEB7900),
                onPrimary: const Color(0xFFF0FFF0),
                primaryContainer: const Color(0xFFF5BC00))),
      ),
    );
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await configureInjection(Environment.prod);
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'CopyPaste',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const DrawingPage(),
//     );
//   }
// }
