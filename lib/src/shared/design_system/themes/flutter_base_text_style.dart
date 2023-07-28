import 'package:flutter/material.dart';
import 'package:flutter_base/src/shared/design_system/tokens/typography_tokens.dart';

@immutable
class FlutterBaseTextStyle {
  final TextStyle style;

  const FlutterBaseTextStyle._(this.style);

  static FlutterBaseTextStyle headline1 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.weka,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.deka,
    ),
  );
  static FlutterBaseTextStyle headline2 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.yotta,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.hecto,
    ),
  );
  static FlutterBaseTextStyle headline3 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.kilo,
    ),
  );
  static FlutterBaseTextStyle headline4 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.exa,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.tera,
    ),
  );
  static FlutterBaseTextStyle headline5 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.peta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.kilo,
    ),
  );
  static FlutterBaseTextStyle headline6 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.giga,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static FlutterBaseTextStyle headline7 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.giga,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static FlutterBaseTextStyle subtitle1 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static FlutterBaseTextStyle subtitle2 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.mega,
    ),
  );
  static FlutterBaseTextStyle bodyText1 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.mega,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.exa,
    ),
  );
  static FlutterBaseTextStyle bodyText2 = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.kilo,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.tera,
    ),
  );
  static FlutterBaseTextStyle button = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.kilo,
      fontWeight: FontWeightTokens.bold,
      letterSpacing: LetterSpacingTokens.exa,
    ),
  );
  static FlutterBaseTextStyle caption = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.hecto,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.peta,
    ),
  );
  static FlutterBaseTextStyle overline = const FlutterBaseTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.deka,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.yotta,
    ),
  );

  FlutterBaseTextStyle get weightLight => FlutterBaseTextStyle._(
      style.copyWith(fontWeight: FontWeightTokens.light));

  FlutterBaseTextStyle get weightRegular => FlutterBaseTextStyle._(
      style.copyWith(fontWeight: FontWeightTokens.regular));

  FlutterBaseTextStyle get weightBold =>
      FlutterBaseTextStyle._(style.copyWith(fontWeight: FontWeightTokens.bold));
}
