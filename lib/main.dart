import 'package:copypaste/core/cloud/sync_service.dart';
import 'package:copypaste/hacks.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:macos_ui/macos_ui.dart';
import 'features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_stackable_popup_menu/my_stackable_popup_menu.dart';
import 'core/injections/injection.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await configureMyStackablePopupDependencies();
  await configureInjection(Environment.prod);

  /// initialize drawing event
  getIt<AuthBloc>().add(const AuthEvent.updateUserState());
  getIt<SyncService>().startSyncLoop();

  await sendVoidRequest();

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
      child: defaultTargetPlatform != TargetPlatform.macOS
          ? MaterialApp.router(
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
                      primaryContainer: const Color(0xFFF5BC00),
                    ),
              ),
            )
          : MacosApp.router(
              routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
              routerDelegate: getIt<AppRouter>().delegate(),
              // todo: add theme
              theme: MacosTheme.of(context).copyWith(),
            ),
    );
  }
}
