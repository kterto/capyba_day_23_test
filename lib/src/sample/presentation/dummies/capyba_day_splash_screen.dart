import 'package:capyba_day_twenty_three_test/src/shared/design_system/assets/capyba_day_twenty_three_test_images.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/color_tokens.dart';
import 'package:flutter/material.dart';

class CapybaDaySplashScreen extends StatelessWidget {
  const CapybaDaySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTokens.capybaPurple,
      body: Center(
        child: Stack(
          children: [
            const SizedBox(
              height: 113,
              width: 208,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  CapybaDayTwentyThreeTestImages.capyba,
                  width: 183,
                  height: 48,
                ),
                const SizedBox(width: 8),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      CapybaDayTwentyThreeTestImages.twentyThree,
                      width: 117,
                      height: 57,
                    ),
                    const SizedBox(height: 9),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(height: 113, width: 117),
                  Positioned(
                    top: 21,
                    child: Image.asset(
                      CapybaDayTwentyThreeTestImages.capivara,
                      width: 88,
                      height: 92,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 18,
              bottom: 4.57,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  const SizedBox(width: 170, height: 87.4),
                  Image.asset(
                    CapybaDayTwentyThreeTestImages.day,
                    height: 48.8,
                    width: 100.9,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
