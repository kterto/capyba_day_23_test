import 'package:capyba_day_twenty_three_test/src/sample/presentation/widgets/splash_static_stack.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/assets/capyba_day_twenty_three_test_images.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/color_tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class CapybaDayAnimatedSplashScreen extends StatefulWidget {
  const CapybaDayAnimatedSplashScreen({super.key});

  @override
  State<CapybaDayAnimatedSplashScreen> createState() =>
      _CapybaDayAnimatedSplashScreeState();
}

class _CapybaDayAnimatedSplashScreeState
    extends State<CapybaDayAnimatedSplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );
    Future.delayed(const Duration(milliseconds: 300))
        .then((value) => _controller.forward());
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // timeDilation = 5.0; // 1.0 is normal animation speed.
    return SplashStaggeredAnimation(
      controller: _controller.view,
      viewportSize: MediaQuery.of(context).size,
    );
  }
}

class SplashStaggeredAnimation extends StatelessWidget {
  SplashStaggeredAnimation({
    super.key,
    required this.controller,
    required this.viewportSize,
  })  : grayHeight =
            Tween<double>(begin: viewportSize.height, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.0,
              0.250,
              curve: Curves.easeInOutQuad,
            ),
          ),
        ),
        purpleHeight =
            Tween<double>(begin: 0, end: viewportSize.height).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.150,
              0.350,
              curve: Curves.easeOutSine,
            ),
          ),
        ),
        capybaraPadding = EdgeInsetsTween(
          begin: const EdgeInsets.only(top: 48),
          end: EdgeInsets.zero,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.200,
              0.350,
              curve: Curves.easeOutSine,
            ),
          ),
        ),
        staticStackOpacity = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.720,
              0.950,
              curve: Curves.ease,
            ),
          ),
        ),
        staticStackPadding = EdgeInsetsTween(
          begin: const EdgeInsets.only(top: 100),
          end: EdgeInsets.zero,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.720,
              0.950,
              curve: Curves.ease,
            ),
          ),
        );

  final Animation<double> controller;
  final Size viewportSize;
  final Animation<double> grayHeight;
  final Animation<double> purpleHeight;
  final Animation<EdgeInsets> capybaraPadding;
  final Animation<double> staticStackOpacity;
  final Animation<EdgeInsets> staticStackPadding;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Stack(
      children: [
        Container(
          color: ColorTokens.capybaPurple,
          height: viewportSize.height,
          width: viewportSize.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: staticStackOpacity.value,
                child: Padding(
                  padding: staticStackPadding.value,
                  child: const SplashStaticStack(withCapybara: false),
                ),
              ),
              SizedBox(
                width: 308,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Visibility(
                        visible: controller.value > 0.20,
                        child: Center(
                          child: Padding(
                            padding: capybaraPadding.value,
                            child: Image.asset(
                              CapybaDayTwentyThreeTestImages.capivara,
                              width: 184.4,
                              height: 191.7,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              width: viewportSize.width,
              height: grayHeight.value,
              color: ColorTokens.capybaGray,
            ),
            Expanded(
              child: Container(
                width: viewportSize.width,
                color: ColorTokens.capybaPink,
              ),
            ),
            Expanded(
              child: Container(
                width: viewportSize.width,
                color: ColorTokens.capybaYellow,
              ),
            ),
            Container(
              width: viewportSize.width,
              height: purpleHeight.value,
              color: Colors.transparent,
            ),
          ],
        ),
      ],
    );
  }
}
