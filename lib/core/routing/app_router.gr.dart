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
    AuthenticationRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AuthenticationPage(),
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
        RouteConfig(AuthenticationRoute.name, path: '/'),
        RouteConfig(DrawingRoute.name, path: '/drawing-page')
      ];
}

/// generated route for
/// [AuthenticationPage]
class AuthenticationRoute extends PageRouteInfo<void> {
  const AuthenticationRoute() : super(AuthenticationRoute.name, path: '/');

  static const String name = 'AuthenticationRoute';
}

/// generated route for
/// [DrawingPage]
class DrawingRoute extends PageRouteInfo<void> {
  const DrawingRoute() : super(DrawingRoute.name, path: '/drawing-page');

  static const String name = 'DrawingRoute';
}
