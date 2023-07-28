part of 'sample_usecase.dart';

@freezed
class SampleState with _$SampleState {
  const SampleState._();
  const factory SampleState({
    required SampleFlow flow,
    required SignInForm signInForm,
    required RequestStatus signInRequestStatus,
  }) = _SampleState;

  factory SampleState.initial() => const SampleState(
        flow: Splash(),
        signInForm: SignInForm(),
        signInRequestStatus: Idle(),
      );
}

@freezed
class SampleFlow with _$SampleFlow {
  const factory SampleFlow.splash() = Splash;
  const factory SampleFlow.login() = Login;
  const factory SampleFlow.home() = Home;
}
