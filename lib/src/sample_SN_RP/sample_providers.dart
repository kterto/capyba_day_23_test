import 'package:flutter_base/src/sample/domain/usecases/sample_usecase/sample_usecase.dart';
import 'package:flutter_base/src/shared/shared_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SampleProviders {
  static AutoDisposeStateNotifierProvider<SampleUsecase, SampleState>
      sampleUsecaseProvider = AutoDisposeStateNotifierProvider(
    (ref) => SampleUsecase(
      apiRepository: ref.read(SharedProviders.apiRepositoryProvider.notifier),
    ),
  );
}
