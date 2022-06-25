import 'package:auto_route/auto_route.dart';
import 'package:copypaste/features/authentication/presentation/pages/authentication_page.dart';
import 'package:copypaste/features/drawing/presentation/pages/drawing_page.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

import '../../features/splash_page/splash_page.dart';
part 'app_router.gr.dart';

@LazySingleton()
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // TODO: fix the splash page not updating
    AutoRoute(page: SplashPage, initial: true),
    CustomRoute(
      initial: true,
      page: AuthenticationPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      page: DrawingPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
