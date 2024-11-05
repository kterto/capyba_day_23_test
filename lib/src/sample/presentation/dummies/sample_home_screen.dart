import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/sample/sample_providers.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/assets/capyba_day_twenty_three_test_images.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/themes/app_button_color.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/themes/capyba_day_twenty_three_test_text_style.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/widgets/buttons/capyba_day_twenty_three_test_outline_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SampleHomeScreen extends ConsumerWidget {
  const SampleHomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              CircleAvatar(
                radius: SpacingTokens.exa,
                child: Image.asset(
                  CapybaDayTwentyThreeTestImages.defaultAvatar,
                ),
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: SpacingTokens.mega,
                  ),
                  child: ListView(
                    children: [
                      Text(
                        "This is the Capyba Flutter Base sample App.",
                        style:
                            CapybaDayTwentyThreeTestTextStyle.bodyText1.style,
                      ),
                      const SizedBox(
                        height: SpacingTokens.mega,
                      ),
                      Text(
                        "* Remember that this is still running with no environment distiction. That's a good place to start.",
                        style:
                            CapybaDayTwentyThreeTestTextStyle.bodyText2.style,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: SpacingTokens.mega,
                ),
                child: CapybaDayTwentyThreeTestOutlineButton(
                  "Sair",
                  color: AppButtonColor.outline,
                  onPressed: ref
                      .read(SampleProviders.sampleUsecaseProvider.notifier)
                      .started,
                ),
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
}
