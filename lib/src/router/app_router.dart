import 'package:auto_route/auto_route.dart';
import 'package:capyba_day_twenty_three_test/src/sample/routes/sample_routes.dart';

import 'app_router.gr.dart';

const String _ROOT = '/';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        ...SampleRoutes.routes,
      ];
}
