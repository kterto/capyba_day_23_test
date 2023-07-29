import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/color_tokens.dart';

class CapybaDayTwentyThreeTestCircularProgressIndicator
    extends StatelessWidget {
  final double? size;
  final Alignment? alignment;
  const CapybaDayTwentyThreeTestCircularProgressIndicator(
      {Key? key, this.alignment, this.size})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: alignment ?? Alignment.center,
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
          ColorTokens.primary,
        ),
      ),
    );
  }
}
