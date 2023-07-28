import 'package:flutter/material.dart';

class FlexibleScrollContainer extends StatelessWidget {
  final Widget _child;
  const FlexibleScrollContainer({
    Key? key,
    required Widget child,
  })  : _child = child,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      reverse: true,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: _child,
        ),
      ],
    );
  }
}
