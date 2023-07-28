import 'package:auto_route/auto_route.dart';
import 'package:flutter_base/src/sample/presentation/dummies/sample_home_screen.dart';
import 'package:flutter_base/src/sample/presentation/dummies/sample_login_screen.dart';
import 'package:flutter_base/src/sample/presentation/dummies/sample_splash_screen.dart';
import 'package:flutter_base/src/sample/presentation/smarties/sample_smart_view.dart';
import 'package:flutter_base/src/sample/sample_routes.dart';

const String _ROOT = '/';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: [
    AutoRoute(
      path: _ROOT,
      page: SampleSmartView,
      children: [
        AutoRoute(
          path: SampleRoutes.sampleSplash,
          page: SampleSplashScreen,
        ),
        AutoRoute(
          path: SampleRoutes.sampleLogin,
          page: SampleLoginScreen,
        ),
        AutoRoute(
          path: SampleRoutes.sampleHome,
          page: SampleHomeScreen,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
