import 'package:flutter/material.dart';
import 'package:flutter_base/src/sample/sample_providers.dart';
import 'package:flutter_base/src/shared/design_system/assets/flutter_base_images.dart';
import 'package:flutter_base/src/shared/design_system/themes/app_button_color.dart';
import 'package:flutter_base/src/shared/design_system/themes/flutter_base_text_style.dart';
import 'package:flutter_base/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:flutter_base/src/shared/design_system/widgets/buttons/flutter_base_outline_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SampleHomeScreen extends ConsumerWidget {
  const SampleHomeScreen({Key? key}) : super(key: key);

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
                  FlutterBaseImages.defaultAvatar,
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
                        style: FlutterBaseTextStyle.bodyText1.style,
                      ),
                      const SizedBox(
                        height: SpacingTokens.mega,
                      ),
                      Text(
                        "* Remember that this is still running with no environment distiction. That's a good place to start.",
                        style: FlutterBaseTextStyle.bodyText2.style,
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
                child: FlutterBaseOutlineButton(
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
