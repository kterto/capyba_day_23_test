import 'package:capyba_day_twenty_three_test/src/router/app_router_providers.dart';
import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/shared/data/miscelaneous/env.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/capyba_day_twenty_three_test_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CapybaDayTwentyThreeTest extends ConsumerWidget {
  const CapybaDayTwentyThreeTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'CapybaDayTwentyThreeTest',
      theme: CapybaDayTwentyThreeTestTheme.data(context),
      routerConfig: ref.watch(AppRouterProviders.appRouterProvider).config(),
      builder: (context, child) => Env.name != Envs.PRODUCTION
          ? Env.name.isNotEmpty
              ? Banner(
                  message: Env.name.toString(),
                  textDirection: TextDirection.ltr,
                  location: BannerLocation.topStart,
                  child: child,
                )
              : Banner(
                  message: "ENVLESS",
                  textDirection: TextDirection.ltr,
                  location: BannerLocation.topStart,
                  child: child,
                )
          : child!,
    );
  }
}
