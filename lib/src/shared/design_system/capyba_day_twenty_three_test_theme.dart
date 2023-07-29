import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/color_tokens.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/generate_material_color.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/typography_tokens.dart';

class CapybaDayTwentyThreeTestTheme {
  static ThemeData data(BuildContext context) => ThemeData(
        primarySwatch: generateMaterialColor(ColorTokens.primary),
        textTheme: CapybaDayTwentyThreeTestTypographyTokens.buildFontTheme(
          Theme.of(context).textTheme,
        ),
      );
}
