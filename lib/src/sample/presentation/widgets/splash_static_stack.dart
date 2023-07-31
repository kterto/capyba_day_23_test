import 'package:capyba_day_twenty_three_test/src/shared/design_system/assets/capyba_day_twenty_three_test_images.dart';
import 'package:flutter/material.dart';

class SplashStaticStack extends StatelessWidget {
  const SplashStaticStack({super.key, this.withCapybara = true});

  final bool withCapybara;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                child: withCapybara
                    ? Image.asset(
                        CapybaDayTwentyThreeTestImages.capivara,
                        width: 88,
                        height: 92,
                      )
                    : const SizedBox(width: 88, height: 92),
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
    );
  }
}
