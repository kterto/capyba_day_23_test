// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/themes/app_text_field_color.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/themes/capyba_day_twenty_three_test_text_style.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/tokens/typography_tokens.dart';
import 'package:capyba_day_twenty_three_test/src/shared/design_system/widgets/text_field/capyba_day_twenty_three_test_text_field_controller.dart';
import 'package:rxdart/rxdart.dart';

enum SUFFIX { None, Eye, Close, Copy }

class CapybaDayTwentyThreeTestTextField extends StatefulWidget {
  final String hintText;
  final CapybaDayTwentyThreeTestTextFieldController? controller;
  final List<TextInputFormatter> formatters;
  final TextInputType keyboardType;
  final void Function(String)? onSubmitted;
  final String? errorMessage;
  final bool autofocus;
  final FocusNode? focusNode;
  final Widget? prefix;
  final SUFFIX? suffix;
  final String? prefixText;
  final AppTextFieldColor color;
  final Function(String)? onChanged;
  final bool? enabled;
  final int maxLines;
  final TextCapitalization textCapitalization;
  const CapybaDayTwentyThreeTestTextField({
    Key? key,
    this.hintText = '',
    this.controller,
    this.formatters = const <TextInputFormatter>[],
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
    this.errorMessage,
    this.autofocus = true,
    this.focusNode,
    this.prefix,
    this.suffix = SUFFIX.None,
    this.prefixText,
    this.onChanged,
    this.enabled = true,
    this.color = AppTextFieldColor.regular,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
  }) : super(key: key);
  @override
  _CapybaDayTwentyThreeTestTextFieldState createState() =>
      _CapybaDayTwentyThreeTestTextFieldState();
}

class _CapybaDayTwentyThreeTestTextFieldState
    extends State<CapybaDayTwentyThreeTestTextField> {
  late BehaviorSubject<bool> focusSubject;
  late FocusNode focusNode;
  late void Function() focusListener;
  late CapybaDayTwentyThreeTestTextFieldController controller;
  @override
  void initState() {
    if (widget.controller == null) {
      controller = CapybaDayTwentyThreeTestTextFieldController(null);
    } else {
      controller = widget.controller!;
    }
    focusSubject = BehaviorSubject.seeded(false);
    focusNode = widget.focusNode ?? FocusNode();
    focusListener = () {
      focusSubject.add(focusNode.hasFocus);
    };
    focusNode.addListener(focusListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<_TextFieldState>(
      initialData: _TextFieldState(
        const CapybaDayTwentyThreeTestTextFieldControllerState(),
        widget.autofocus,
      ),
      stream: Rx.combineLatest2<
          CapybaDayTwentyThreeTestTextFieldControllerState,
          bool,
          _TextFieldState>(
        controller.stream,
        focusSubject.stream,
        (state, hasFocus) => _TextFieldState(state, hasFocus),
      ),
      builder: (context, snapshot) {
        final data = snapshot.data;
        final hasFocus = data?.hasFocus;
        final state = data?.state;
        final bool shouldShowSuccess = (state?.isValid == true) &&
            (state?.shouldShowValidationState == true);
        final bool shouldShowError = (state?.isValid == false) &&
            (state?.shouldShowValidationState == true);
        final Color sufixPrefixSuccessColor = (state?.isValid == true) &&
                (state?.shouldShowValidationState == true)
            ? widget.color.successBorder
            : widget.color.border;
        final Color sufixPrefixErrorColor = (state?.isValid == false) &&
                (state?.shouldShowValidationState == true)
            ? widget.color.errorBorder
            : widget.color.border;
        Widget? prefix;
        Widget? suffix;
        if (widget.prefix != null) {
          prefix = widget.prefix!;
        } else if (widget.prefixText != null) {
          prefix = _Prefix(
            widget.prefixText!,
            widget.color.prefix,
          );
        }
        if (widget.suffix == SUFFIX.Eye) {
          if (!(state?.obscured ?? false)) {
            suffix = IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: shouldShowSuccess
                    ? sufixPrefixSuccessColor
                    : shouldShowError
                        ? sufixPrefixErrorColor
                        : widget.color.focusedBorder,
              ),
              onPressed: () => controller.markAsObscuredText(),
            );
          } else {
            suffix = IconButton(
              icon: Icon(
                Icons.visibility_off,
                color: shouldShowSuccess
                    ? sufixPrefixSuccessColor
                    : shouldShowError
                        ? sufixPrefixErrorColor
                        : widget.color.focusedBorder,
              ),
              onPressed: () => controller.markAsNotObscuredText(),
            );
          }
        }
        if (widget.suffix == SUFFIX.Close) {
          suffix = IconButton(
            icon: Icon(
              Icons.close,
              color: widget.color.prefix,
            ),
            onPressed: () => controller.text = '',
          );
        }
        if (widget.suffix == SUFFIX.Copy) {
          suffix = IconButton(
            icon: Icon(
              Icons.copy,
              color: widget.color.prefix,
            ),
            onPressed: () => debugPrint('pertou'),
          );
        }
        return Theme(
          data: generateTheme(context, state),
          child: TextField(
            onTap: () {
              controller.markAsTouched();
            },
            onChanged: (String value) {
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
              controller.internalOnChanged(value);
            },
            enabled: widget.enabled,
            textCapitalization: widget.textCapitalization,
            onSubmitted: widget.onSubmitted,
            maxLines: widget.maxLines,
            minLines: 1,
            autofocus: widget.autofocus == true,
            focusNode: focusNode,
            inputFormatters: widget.formatters,
            keyboardType: widget.keyboardType,
            controller: controller,
            style: style(hasFocus ?? false),
            obscureText: widget.suffix == SUFFIX.Eye
                ? (state?.obscured ?? false)
                : false,
            decoration: InputDecoration(
              hintText: widget.hintText,
              errorText: state?.shouldShowValidationState == true
                  ? state?.errorMessage
                  : null,
              prefixIcon: prefix,
              suffixIcon: suffix,
            ),
          ),
        );
      },
    );
  }

  ThemeData generateTheme(
    BuildContext context,
    CapybaDayTwentyThreeTestTextFieldControllerState? state,
  ) {
    final currentTheme = Theme.of(context);
    final shouldShowSuccess =
        state != null && state.shouldShowValidationState && state.isValid;
    return currentTheme.copyWith(
      inputDecorationTheme: currentTheme.inputDecorationTheme.copyWith(
        prefixStyle: CapybaDayTwentyThreeTestTextStyle.bodyText1.style.copyWith(
          color: widget.color.prefix,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: SpacingTokens.tera,
        ),
        hintStyle: CapybaDayTwentyThreeTestTextStyle.headline5.style.copyWith(
          color: widget.color.hintText,
        ),
        errorStyle: CapybaDayTwentyThreeTestTextStyle.caption.style.copyWith(
          color: widget.color.errorText,
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: shouldShowSuccess
                ? widget.color.successBorder
                : widget.color.border,
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: shouldShowSuccess
                ? widget.color.successBorder
                : widget.color.border,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: shouldShowSuccess
                ? widget.color.successBorder
                : widget.color.border,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: shouldShowSuccess
                ? widget.color.successBorder
                : widget.color.focusedBorder,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: widget.color.errorBorder,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: widget.color.errorBorder,
          ),
        ),
      ),
      primaryColor: (state?.shouldShowValidationState ?? false)
          ? shouldShowSuccess
              ? widget.color.successBorder
              : widget.color.errorBorder
          : widget.color.focusedBorder,
    );
  }

  TextStyle style(bool hasFocus) {
    if (hasFocus == true) {
      return CapybaDayTwentyThreeTestTextStyle.headline5.style.copyWith(
        fontWeight: FontWeightTokens.light,
        fontSize: FontSizeTokens.peta,
        color: widget.color.focusedText,
      );
    }
    return CapybaDayTwentyThreeTestTextStyle.headline5.style.copyWith(
      fontWeight: FontWeightTokens.light,
      fontSize: FontSizeTokens.peta,
      color: widget.color.unfocusedText,
    );
  }

  @override
  void dispose() {
    focusNode.removeListener(focusListener);
    focusNode.dispose();
    super.dispose();
  }
}

class _TextFieldState {
  final bool hasFocus;
  final CapybaDayTwentyThreeTestTextFieldControllerState state;
  _TextFieldState(this.state, this.hasFocus);
}

class _Prefix extends StatelessWidget {
  final String text;
  final Color textColor;
  const _Prefix(this.text, this.textColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(Size.zero),
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(bottom: SpacingTokens.kilo),
      child: Text(
        text,
        style: CapybaDayTwentyThreeTestTextStyle.bodyText2.style
            .apply(color: textColor),
      ),
    );
  }
}
