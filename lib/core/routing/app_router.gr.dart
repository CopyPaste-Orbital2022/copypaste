// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>(
          orElse: () => const AuthenticationRouteArgs());
      return CustomPage<dynamic>(
          routeData: routeData,
          child: AuthenticationPage(
              key: args.key, backgroundColor: args.backgroundColor),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    FileManagementRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const FileManagementPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    DrawingRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const DrawingPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/splash-page'),
        RouteConfig(AuthenticationRoute.name, path: '/'),
        RouteConfig(FileManagementRoute.name, path: '/file-management-page'),
        RouteConfig(DrawingRoute.name, path: '/drawing-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [AuthenticationPage]
class AuthenticationRoute extends PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute(
      {Key? key, Color backgroundColor = const Color(0xFFEB7900)})
      : super(AuthenticationRoute.name,
            path: '/',
            args: AuthenticationRouteArgs(
                key: key, backgroundColor: backgroundColor));

  static const String name = 'AuthenticationRoute';
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs(
      {this.key, this.backgroundColor = const Color(0xFFEB7900)});

  final Key? key;

  final Color backgroundColor;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{key: $key, backgroundColor: $backgroundColor}';
  }
}

/// generated route for
/// [FileManagementPage]
class FileManagementRoute extends PageRouteInfo<void> {
  const FileManagementRoute()
      : super(FileManagementRoute.name, path: '/file-management-page');

  static const String name = 'FileManagementRoute';
}

/// generated route for
/// [DrawingPage]
class DrawingRoute extends PageRouteInfo<void> {
  const DrawingRoute() : super(DrawingRoute.name, path: '/drawing-page');

  static const String name = 'DrawingRoute';
}
