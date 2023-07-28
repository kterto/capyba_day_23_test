import 'package:flutter/material.dart';
import 'package:flutter_base/src/shared/design_system/tokens/color_tokens.dart';
import 'package:flutter_base/src/shared/design_system/tokens/generate_material_color.dart';
import 'package:flutter_base/src/shared/design_system/tokens/typography_tokens.dart';

class FlutterBaseTheme {
  static ThemeData data(BuildContext context) => ThemeData(
        primarySwatch: generateMaterialColor(ColorTokens.primary),
        textTheme: FlutterBaseTypographyTokens.buildFontTheme(
          Theme.of(context).textTheme,
        ),
      );
}
