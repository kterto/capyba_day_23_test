import 'package:capyba_day_twenty_three_test/src/router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppRouterProviders {
  static Provider<AppRouter> appRouterProvider = Provider((ref) => AppRouter());
}
