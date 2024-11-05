import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/sample/sample_providers.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/themes/capyba_day_twenty_three_test_text_style.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/color_tokens.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/widgets/buttons/capyba_day_twenty_three_test_button.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/widgets/capyba_day_twenty_three_test_circular_progress_indicator.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/widgets/hero_app_name.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/widgets/text_field/capyba_day_twenty_three_test_text_field.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/widgets/text_field/capyba_day_twenty_three_test_text_field_controller.dart';
import 'package:capyba_day_twenty_three_test/src/shared/presentation/widgets/flexible_scroll_container.dart';
import 'package:capyba_day_twenty_three_test/src/shared/utils/validators.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SampleLoginScreen extends ConsumerStatefulWidget {
  const SampleLoginScreen({super.key});
  @override
  SampleLoginScreenState createState() => SampleLoginScreenState();
}

class SampleLoginScreenState extends ConsumerState<SampleLoginScreen> {
  late final CapybaDayTwentyThreeTestTextFieldController passwordController;
  late final CapybaDayTwentyThreeTestTextFieldController emailController;
  late final FocusNode passwordFocus;
  @override
  void initState() {
    passwordController = CapybaDayTwentyThreeTestTextFieldController(
      "",
      validators: Validators.password,
    );
    emailController = CapybaDayTwentyThreeTestTextFieldController(
      "",
      validators: Validators.email,
    );
    passwordFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    try {
      passwordFocus.dispose();
    } catch (e) {
      debugPrint('disposing error');
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTokens.neutralLightest,
      body: FlexibleScrollContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingTokens.giga,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeroAppName(),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter your ",
                      style: CapybaDayTwentyThreeTestTextStyle.bodyText1.style
                          .copyWith(color: ColorTokens.neutralMediumDark),
                    ),
                    TextSpan(
                      text: "Email:",
                      style: CapybaDayTwentyThreeTestTextStyle
                          .bodyText1.weightBold.style
                          .copyWith(
                        color: ColorTokens.neutralDarkest,
                      ),
                    )
                  ],
                ),
              ),
              CapybaDayTwentyThreeTestTextField(
                hintText: "Email",
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onSubmitted: (value) => passwordFocus.requestFocus(),
                onChanged: ref
                    .read(SampleProviders.sampleUsecaseProvider.notifier)
                    .onEmailChanged,
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter your ",
                      style: CapybaDayTwentyThreeTestTextStyle.bodyText1.style
                          .copyWith(color: ColorTokens.neutralMediumDark),
                    ),
                    TextSpan(
                      text: "Password:",
                      style: CapybaDayTwentyThreeTestTextStyle
                          .bodyText1.weightBold.style
                          .copyWith(
                        color: ColorTokens.neutralDarkest,
                      ),
                    )
                  ],
                ),
              ),
              CapybaDayTwentyThreeTestTextField(
                hintText: "Password",
                focusNode: passwordFocus,
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                onSubmitted: (value) => _onContinuePressed(),
                onChanged: ref
                    .read(SampleProviders.sampleUsecaseProvider.notifier)
                    .onPasswordChaged,
                suffix: SUFFIX.Eye,
              ),
              const SizedBox(
                height: SpacingTokens.exa,
              ),
              ref
                  .watch(SampleProviders.sampleUsecaseProvider)
                  .signInRequestStatus
                  .maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () =>
                        const CapybaDayTwentyThreeTestCircularProgressIndicator(),
                  ),
              Visibility(
                visible: ref
                    .watch(SampleProviders.sampleUsecaseProvider)
                    .signInRequestStatus
                    .isLoading,
                child: const SizedBox(
                  height: SpacingTokens.mega,
                ),
              ),
              CapybaDayTwentyThreeTestButton(
                text: "Continue",
                onPressed: ref
                        .watch(SampleProviders.sampleUsecaseProvider)
                        .signInRequestStatus
                        .isLoading
                    ? null
                    : _onContinuePressed,
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onContinuePressed() {
    emailController.showValidationState();
    passwordController.showValidationState();
    ref
        .read(SampleProviders.sampleUsecaseProvider.notifier)
        .onContinuePressed();
  }
}
