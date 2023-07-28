// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'sample/presentation/dummies/sample_home_screen.dart' as _i4;
import 'sample/presentation/dummies/sample_login_screen.dart' as _i3;
import 'sample/presentation/dummies/sample_splash_screen.dart' as _i2;
import 'sample/presentation/smarties/sample_smart_view.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SampleSmartViewRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SampleSmartView(),
          opaque: true,
          barrierDismissible: false);
    },
    SampleSplashScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SampleSplashScreen(),
          opaque: true,
          barrierDismissible: false);
    },
    SampleLoginScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.SampleLoginScreen(),
          opaque: true,
          barrierDismissible: false);
    },
    SampleHomeScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.SampleHomeScreen(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SampleSmartViewRoute.name, path: '/', children: [
          _i5.RouteConfig(SampleSplashScreenRoute.name,
              path: 'splash', parent: SampleSmartViewRoute.name),
          _i5.RouteConfig(SampleLoginScreenRoute.name,
              path: 'login', parent: SampleSmartViewRoute.name),
          _i5.RouteConfig(SampleHomeScreenRoute.name,
              path: 'home', parent: SampleSmartViewRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SampleSmartView]
class SampleSmartViewRoute extends _i5.PageRouteInfo<void> {
  const SampleSmartViewRoute({List<_i5.PageRouteInfo>? children})
      : super(SampleSmartViewRoute.name, path: '/', initialChildren: children);

  static const String name = 'SampleSmartViewRoute';
}

/// generated route for
/// [_i2.SampleSplashScreen]
class SampleSplashScreenRoute extends _i5.PageRouteInfo<void> {
  const SampleSplashScreenRoute()
      : super(SampleSplashScreenRoute.name, path: 'splash');

  static const String name = 'SampleSplashScreenRoute';
}

/// generated route for
/// [_i3.SampleLoginScreen]
class SampleLoginScreenRoute extends _i5.PageRouteInfo<void> {
  const SampleLoginScreenRoute()
      : super(SampleLoginScreenRoute.name, path: 'login');

  static const String name = 'SampleLoginScreenRoute';
}

/// generated route for
/// [_i4.SampleHomeScreen]
class SampleHomeScreenRoute extends _i5.PageRouteInfo<void> {
  const SampleHomeScreenRoute()
      : super(SampleHomeScreenRoute.name, path: 'home');

  static const String name = 'SampleHomeScreenRoute';
}
