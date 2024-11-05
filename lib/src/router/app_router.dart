import 'package:auto_route/auto_route.dart';
import 'package:capyba_day_twenty_three_test/src/sample/routes/sample_routes.dart';

const String _ROOT = '/';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        ...SampleRoutes.routes,
      ];
}
