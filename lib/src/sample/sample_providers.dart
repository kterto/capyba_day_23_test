import 'package:capyba_day_twenty_three_test/src/sample/domain/usecases/sample_usecase/sample_usecase.dart';
import 'package:capyba_day_twenty_three_test/src/shared/shared_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SampleProviders {
  static AutoDisposeStateNotifierProvider<SampleUsecase, SampleState>
      sampleUsecaseProvider = AutoDisposeStateNotifierProvider(
    (ref) => SampleUsecase(
      apiRepository: ref.read(SharedProviders.apiRepositoryProvider.notifier),
    ),
  );
}
