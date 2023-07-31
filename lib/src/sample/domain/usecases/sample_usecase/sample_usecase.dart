import 'package:convenience_types/convenience_types.dart';
import 'package:capyba_day_twenty_three_test/src/sample/domain/forms/sign_in_form.dart';
import 'package:capyba_day_twenty_three_test/src/shared/data/repositories/api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sample_state.dart';
part 'sample_usecase.freezed.dart';

class SampleUsecase extends StateNotifier<SampleState> {
  SampleUsecase({required ApiRepository apiRepository})
      : _apiRepository = apiRepository,
        super(SampleState.initial());
  final ApiRepository _apiRepository;
  void started() async {
    state = state.copyWith(
      flow: const Splash(),
      signInForm: const SignInForm(),
    );
    await Future.delayed(
      const Duration(milliseconds: 2500),
    );
    // state = state.copyWith(flow: const Login());
  }

  void onEmailChanged(String value) {
    state = state.copyWith(
      signInForm: state.signInForm.copyWith(
        email: state.signInForm.email.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onPasswordChaged(String value) {
    state = state.copyWith(
      signInForm: state.signInForm.copyWith(
        password: state.signInForm.password.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onContinuePressed() async {
    if (state.signInForm.isFormValid) {
      state = state.copyWith(
        signInRequestStatus: const Loading(),
      );
      Result<String> signInRes = await _apiRepository.signIn(state.signInForm);
      signInRes.handle(
        onSuccess: (data) {
          state = state.copyWith(
            signInRequestStatus: Succeeded(data),
            flow: const Home(),
          );
        },
        onFailure: (error) {
          state = state.copyWith(signInRequestStatus: Failed(error));
        },
      );
    }
  }
}
