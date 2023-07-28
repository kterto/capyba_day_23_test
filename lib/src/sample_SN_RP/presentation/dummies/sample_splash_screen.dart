import 'package:flutter/material.dart';
import 'package:flutter_base/src/shared/design_system/assets/flutter_base_images.dart';
import 'package:flutter_base/src/shared/design_system/tokens/color_tokens.dart';
import 'package:flutter_base/src/shared/design_system/widgets/hero_app_name.dart';

const Duration _FADE_DURATION = Duration(milliseconds: 1200);
const Duration _SLIDE_DURATION = Duration(milliseconds: 600);

class SampleSplashScreen extends StatefulWidget {
  const SampleSplashScreen({Key? key}) : super(key: key);

  @override
  State<SampleSplashScreen> createState() => _SampleSplashScreenState();
}

class _SampleSplashScreenState extends State<SampleSplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController fadeController;
  late final AnimationController slideController;
  late final Animation<Offset> slideAnimation;
  late final Animation<double> fadeAnimation;
  bool endedAnimation = false;

  @override
  void initState() {
    super.initState();

    fadeController = AnimationController(
      vsync: this,
      duration: _FADE_DURATION,
    );

    slideController = AnimationController(
      vsync: this,
      duration: _SLIDE_DURATION,
    );

    fadeAnimation = CurvedAnimation(
      parent: fadeController,
      curve: Curves.easeInToLinear,
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(3.5, 0),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        curve: Curves.ease,
        parent: slideController,
      ),
    );

    try {
      fadeController.forward();
    } catch (e) {}

    Future.delayed(_FADE_DURATION - _SLIDE_DURATION).then(
      (value) {
        try {
          slideController.forward().then(
            (value) {
              setState(
                () {
                  endedAnimation = true;
                },
              );
            },
          );
        } catch (e) {}
      },
    );
  }

  @override
  void dispose() {
    try {
      fadeController.dispose();
      slideController.dispose();
    } catch (e) {
      print("Couldnt dispose tickers: $e");
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: ColorTokens.neutralLightest,
      body: Center(
        child: Row(
          children: [
            const Spacer(),
            Stack(
              children: [
                Offstage(
                  offstage: endedAnimation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FadeTransition(
                        opacity: fadeAnimation,
                        child: Image.asset(
                          FlutterBaseImages.logoAndName,
                        ),
                      ),
                      SlideTransition(
                        position: slideAnimation,
                        child: Text(
                          'Flutter Base',
                          style: textTheme.bodyText1?.copyWith(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
                Offstage(
                  offstage: !endedAnimation,
                  child: const HeroAppName(),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
