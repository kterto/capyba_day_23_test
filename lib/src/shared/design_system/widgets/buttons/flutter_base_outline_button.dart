import 'package:flutter/material.dart';
import 'package:flutter_base/src/shared/design_system/themes/app_button_color.dart';
import 'package:flutter_base/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:flutter_base/src/shared/design_system/themes/flutter_base_text_style.dart';
import 'package:flutter_base/src/shared/design_system/widgets/flutter_base_circular_progress_indicator.dart';

const double _BTN_HEIGHT = SpacingTokens.yotta;

class FlutterBaseOutlineButton extends StatelessWidget {
  const FlutterBaseOutlineButton(
    this.text, {
    Key? key,
    this.onPressed,
    this.color = AppButtonColor.outline,
    this.icon,
    this.isLoading = false,
  }) : super(key: key);

  final String? text;
  final void Function()? onPressed;
  final AppButtonColor color;
  final Widget? icon;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: SizedBox(
        height: _BTN_HEIGHT,
        child: OutlinedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed) ||
                    states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.hovered) ||
                    states.contains(MaterialState.selected) ||
                    states.contains(MaterialState.dragged)) {
                  return color.focusedBackground;
                } else if (states.contains(MaterialState.disabled)) {
                  return color.base.withOpacity(0.5);
                }
                return color.base;
              },
            ),
            side: MaterialStateProperty.resolveWith<BorderSide>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed) ||
                    states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.hovered) ||
                    states.contains(MaterialState.selected) ||
                    states.contains(MaterialState.dragged)) {
                  return _buttonBorder(color.focusedForeround);
                } else if (states.contains(MaterialState.disabled)) {
                  return _buttonBorder(color.foreground.withOpacity(0.5));
                }

                return _buttonBorder(color.foreground);
              },
            ),
            shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed) ||
                    states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.hovered) ||
                    states.contains(MaterialState.selected) ||
                    states.contains(MaterialState.dragged)) {
                  return _buttonShape(color.focusedForeround);
                } else if (states.contains(MaterialState.disabled)) {
                  return _buttonShape(color.foreground.withOpacity(0.5));
                }

                return _buttonShape(color.foreground);
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed) ||
                    states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.hovered) ||
                    states.contains(MaterialState.selected) ||
                    states.contains(MaterialState.dragged)) {
                  return color.focusedForeround;
                } else if (states.contains(MaterialState.disabled)) {
                  return color.foreground.withOpacity(0.5);
                }
                return color.foreground;
              },
            ),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: SpacingTokens.deka,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          text ?? '',
                          style: FlutterBaseTextStyle.button.style,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      icon ?? const SizedBox(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: !isLoading
                      ? const SizedBox()
                      : const Expanded(
                          flex: 2,
                          child: Center(
                            child: FlutterBaseCircularProgressIndicator(),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RoundedRectangleBorder _buttonShape(Color color) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        _BTN_HEIGHT / 2,
      ),
    );
  }

  BorderSide _buttonBorder(Color color) {
    return BorderSide(
      color: color,
      width: 1.0,
    );
  }
}
