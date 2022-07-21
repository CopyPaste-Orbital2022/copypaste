import 'package:auto_route/auto_route.dart';
import 'package:copypaste/features/file_management/presentation/pages/file_management_page.dart';
import '../../features/authentication/presentation/pages/authentication_page.dart';
import '../../features/drawing/presentation/pages/drawing_page.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

import '../../features/splash_page/splash_page.dart';
part 'app_router.gr.dart';

@LazySingleton()
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    CustomRoute(
      initial: true,
      page: AuthenticationPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      page: FileManagementPage,
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
