import 'package:flutter/material.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/themes/app_button_color.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/themes/capyba_day_twenty_three_test_text_style.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/widgets/capyba_day_twenty_three_test_circular_progress_indicator.dart';

const double _BTN_HEIGHT = SpacingTokens.yotta;

class CapybaDayTwentyThreeTestButton extends StatelessWidget {
  const CapybaDayTwentyThreeTestButton({
    Key? key,
    this.onPressed,
    this.color = AppButtonColor.primary,
    this.icon,
    this.border = true,
    this.fillWidth = true,
    this.isLoading = false,
    this.text,
  }) : super(key: key);
  final String? text;
  final void Function()? onPressed;
  final AppButtonColor color;
  final Widget? icon;
  final bool? border;
  final bool? fillWidth;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return fillWidth!
        ? FractionallySizedBox(
            widthFactor: 1,
            child: _buttonContent(context),
          )
        : _buttonContent(
            context,
          );
  }

  Widget _buttonContent(BuildContext context) {
    return SizedBox(
      height: _BTN_HEIGHT,
      child: ElevatedButton(
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
          shape: border!
              ? MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
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
                )
              : null,
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
                        style: CapybaDayTwentyThreeTestTextStyle.button.style,
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
                          child:
                              CapybaDayTwentyThreeTestCircularProgressIndicator(),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  RoundedRectangleBorder _buttonBorder(Color color) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        _BTN_HEIGHT / 2,
      ),
      side: BorderSide(
        color: color,
        width: 1,
      ),
    );
  }
}
