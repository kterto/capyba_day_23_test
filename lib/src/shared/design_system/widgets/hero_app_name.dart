// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/assets/capyba_day_twenty_three_test_images.dart';

class HeroAppName extends StatefulWidget {
  const HeroAppName({Key? key}) : super(key: key);
  @override
  _HeroAppNameState createState() => _HeroAppNameState();
}

class _HeroAppNameState extends State<HeroAppName> {
  final heroTag = 'AppNameHeroTag';
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Hero(
      tag: heroTag,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            CapybaDayTwentyThreeTestImages.logoAndName,
          ),
          Text(
            'Flutter Base',
            style: textTheme.bodyLarge?.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
