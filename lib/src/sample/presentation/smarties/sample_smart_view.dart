import 'package:auto_route/auto_route.dart';
import 'package:capyba_day_twenty_three_test/src/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/sample/domain/usecases/sample_usecase/sample_usecase.dart';
import 'package:capyba_day_twenty_three_test/src/sample/sample_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage<Never>(name: 'SampleSmartRoute')
class SampleSmartView extends ConsumerStatefulWidget {
  const SampleSmartView({Key? key}) : super(key: key);
  @override
  SampleSmartViewState createState() => SampleSmartViewState();
}

class SampleSmartViewState extends ConsumerState<SampleSmartView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(SampleProviders.sampleUsecaseProvider.notifier).started();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SampleState state = ref.watch(SampleProviders.sampleUsecaseProvider);
    return AutoRouter.declarative(
      routes: (PendingRoutesHandler handler) => _routes(handler, state),
    );
  }

  _routes(PendingRoutesHandler handler, SampleState state) {
    return state.flow.when(
      splash: () => const [SampleSplashRouteWrapper()],
      login: () => const [SampleLoginRouteWrapper()],
      home: () => const [SampleHomeRouteWrapper()],
    );
  }
}
