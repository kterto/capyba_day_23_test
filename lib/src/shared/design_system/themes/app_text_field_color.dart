import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/color_tokens.dart';

@immutable
class AppTextFieldColor {
  final Color placeholder;
  final Color text;
  final Color prefix;
  final Color hintText;
  final Color focusedText;
  final Color errorText;
  final Color border;
  final Color focusedBorder;
  final Color unfocusedText;
  final Color successBorder;
  final Color errorBorder;
  static const regular = AppTextFieldColor(
    placeholder: ColorTokens.neutralLight,
    text: ColorTokens.neutralMediumDark,
    prefix: ColorTokens.neutralDarkest,
    hintText: ColorTokens.neutral,
    focusedText: ColorTokens.neutralDarkest,
    unfocusedText: ColorTokens.neutralMediumDark,
    errorText: ColorTokens.danger,
    errorBorder: ColorTokens.danger,
    border: ColorTokens.neutralMediumLight,
    focusedBorder: ColorTokens.neutral,
    successBorder: ColorTokens.primary,
  );
  const AppTextFieldColor({
    this.placeholder = ColorTokens.neutralMediumDark,
    this.text = ColorTokens.neutralDarkest,
    this.prefix = ColorTokens.neutralDarkest,
    this.hintText = ColorTokens.neutral,
    this.focusedText = ColorTokens.neutralDarkest,
    this.unfocusedText = ColorTokens.neutral,
    this.errorText = ColorTokens.danger,
    this.border = ColorTokens.danger,
    this.focusedBorder = ColorTokens.neutralLight,
    this.successBorder = ColorTokens.primary,
    this.errorBorder = ColorTokens.primary,
  });
}
