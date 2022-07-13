import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'hak_button_elevated.dart';
import 'hak_button_outlined.dart';
import 'hak_button_text.dart';

enum HakButtonType { text, outlined, elevated, google }

class HakButton extends StatelessWidget {
  final ButtonStyle? style;
  final HakButtonType type;
  final Widget? child;
  final String? text;
  final Function? onPressed;
  final Function? onLongPress;
  final bool enabled;
  final bool? loading;

  HakButton({
    this.type = HakButtonType.elevated,
    this.child,
    this.onPressed,
    this.text,
    this.enabled = true,
    this.loading,
    this.style,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    if (type == HakButtonType.outlined)
      return HakButtonOutlined(
        enabled: enabled,
        loading: loading,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: child,
        text: text,
        style: style ?? Theme.of(context).outlinedButtonTheme.style,
      );

    if (type == HakButtonType.text)
      return HakButtonText(
        enabled: enabled,
        loading: loading,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: child,
        text: text,
        style: style ?? Theme.of(context).textButtonTheme.style,
      );

    if (type == HakButtonType.google)
      return Row(
        children: [
          Expanded(
            child: SignInButton(
              Buttons.Google,
              shape: Theme.of(context).buttonTheme.shape,
              text: text,
              onPressed: enabled && onPressed != null
                  ? () {
                      onPressed!();
                    }
                  : () {},
            ),
          ),
        ],
      );
    HakButtonText(
      enabled: enabled,
      loading: loading,
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: child,
      text: text,
      style: style ?? Theme.of(context).textButtonTheme.style,
    );
    return HakButtonElevated(
      enabled: enabled,
      loading: loading,
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: child,
      text: text,
      style: style ?? Theme.of(context).elevatedButtonTheme.style,
    );
  }
}
