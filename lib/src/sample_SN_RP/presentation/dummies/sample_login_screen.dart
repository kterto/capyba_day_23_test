import 'package:flutter/material.dart';
import 'package:flutter_base/src/sample/sample_providers.dart';
import 'package:flutter_base/src/shared/design_system/themes/flutter_base_text_style.dart';
import 'package:flutter_base/src/shared/design_system/tokens/color_tokens.dart';
import 'package:flutter_base/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:flutter_base/src/shared/design_system/widgets/buttons/flutter_base_button.dart';
import 'package:flutter_base/src/shared/design_system/widgets/flutter_base_circular_progress_indicator.dart';
import 'package:flutter_base/src/shared/design_system/widgets/hero_app_name.dart';
import 'package:flutter_base/src/shared/design_system/widgets/text_field/flutter_base_text_field.dart';
import 'package:flutter_base/src/shared/design_system/widgets/text_field/flutter_base_text_field_controller.dart';
import 'package:flutter_base/src/shared/presentation/widgets/flexible_scroll_container.dart';
import 'package:flutter_base/src/shared/utils/validators.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SampleLoginScreen extends ConsumerStatefulWidget {
  const SampleLoginScreen({Key? key}) : super(key: key);

  @override
  SampleLoginScreenState createState() => SampleLoginScreenState();
}

class SampleLoginScreenState extends ConsumerState<SampleLoginScreen> {
  late final FlutterBaseTextFieldController passwordController;
  late final FlutterBaseTextFieldController emailController;
  late final FocusNode passwordFocus;

  @override
  void initState() {
    passwordController = FlutterBaseTextFieldController(
      "",
      validators: Validators.password,
    );
    emailController = FlutterBaseTextFieldController(
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
    } catch (e) {}
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
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
                      style: FlutterBaseTextStyle.bodyText1.style
                          .copyWith(color: ColorTokens.neutralMediumDark),
                    ),
                    TextSpan(
                      text: "Email:",
                      style: FlutterBaseTextStyle.bodyText1.weightBold.style
                          .copyWith(
                        color: ColorTokens.neutralDarkest,
                      ),
                    )
                  ],
                ),
              ),
              FlutterBaseTextField(
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
                      style: FlutterBaseTextStyle.bodyText1.style
                          .copyWith(color: ColorTokens.neutralMediumDark),
                    ),
                    TextSpan(
                      text: "Password:",
                      style: FlutterBaseTextStyle.bodyText1.weightBold.style
                          .copyWith(
                        color: ColorTokens.neutralDarkest,
                      ),
                    )
                  ],
                ),
              ),
              FlutterBaseTextField(
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
                    loading: () => const FlutterBaseCircularProgressIndicator(),
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
              FlutterBaseButton(
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
