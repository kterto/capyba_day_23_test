import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/typography_tokens.dart';

@immutable
class CapybaDayTwentyThreeTestTextStyle {
  final TextStyle style;
  const CapybaDayTwentyThreeTestTextStyle._(this.style);
  static CapybaDayTwentyThreeTestTextStyle headline1 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.weka,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.deka,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle headline2 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.yotta,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.hecto,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle headline3 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.kilo,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle headline4 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.exa,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.tera,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle headline5 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.peta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.kilo,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle headline6 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.giga,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle headline7 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.giga,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle subtitle1 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle subtitle2 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.mega,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle bodyText1 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.mega,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.exa,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle bodyText2 =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.kilo,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.tera,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle button =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.kilo,
      fontWeight: FontWeightTokens.bold,
      letterSpacing: LetterSpacingTokens.exa,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle caption =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.hecto,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.peta,
    ),
  );
  static CapybaDayTwentyThreeTestTextStyle overline =
      const CapybaDayTwentyThreeTestTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.deka,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.yotta,
    ),
  );
  CapybaDayTwentyThreeTestTextStyle get weightLight =>
      CapybaDayTwentyThreeTestTextStyle._(
          style.copyWith(fontWeight: FontWeightTokens.light));
  CapybaDayTwentyThreeTestTextStyle get weightRegular =>
      CapybaDayTwentyThreeTestTextStyle._(
          style.copyWith(fontWeight: FontWeightTokens.regular));
  CapybaDayTwentyThreeTestTextStyle get weightBold =>
      CapybaDayTwentyThreeTestTextStyle._(
          style.copyWith(fontWeight: FontWeightTokens.bold));
}
