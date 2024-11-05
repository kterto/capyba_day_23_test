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
        );

  final Animation<double> controller;
  final Size viewportSize;
  final Animation<double> grayHeight;
  final Animation<double> purpleHeight;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: viewportSize.width,
              height: viewportSize.height / 2,
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
              height: 0,
              color: Colors.transparent,
            ),
          ],
        ),
      ],
    );
  }
}
