import 'package:flutter/material.dart';
import 'package:flutter_base/src/shared/design_system/tokens/color_tokens.dart';

class FlutterBaseCircularProgressIndicator extends StatelessWidget {
  final double? size;
  final Alignment? alignment;

  const FlutterBaseCircularProgressIndicator(
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
