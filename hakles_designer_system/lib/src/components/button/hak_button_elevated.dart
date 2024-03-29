import 'package:flutter/material.dart';
import 'package:hakles_designer_system/src/components/progress/hak_progress.dart';
import 'package:hakles_designer_system/src/hak_colors.dart';

class HakButtonElevated extends StatelessWidget {
  final ButtonStyle? style;

  final Widget? child;
  final String? text;
  final Function? onPressed;
  final Function? onLongPress;
  final bool? enabled;
  final bool? loading;

  HakButtonElevated({
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
    Function? onPressed =
        (enabled == null || enabled == false || loading == true)
            ? null
            : this.onPressed;

    final onLongPress = (enabled == null || enabled == false || loading == true)
        ? null
        : this.onLongPress;

    double opacity = 1;
    var style = this.style ?? Theme.of(context).elevatedButtonTheme.style;

    if (onPressed == null) {
      onPressed = () {};
      opacity = 0.5;
      style = style?.copyWith(
        splashFactory: NoSplash.splashFactory,
      );
    }

    return Stack(
      children: [
        Opacity(
          opacity: opacity,
          child: ElevatedButton(
            onPressed: onPressed as void Function()?,
            onLongPress: onLongPress as void Function()?,
            child: _getChild(context),
            style: style,
          ),
        ),
        if (loading != null && loading!)
          Positioned.fill(
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: HakProgress(
                  valueColor: Theme.of(context).indicatorColor,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget? _getChild(BuildContext context) {
    if (loading != null && loading!)
      return Container(
        alignment: Alignment.center,
      );

    if (child != null) return child;

    if (text != null)
      return Container(
        alignment: Alignment.center,
        child: Text(text!),
      );

    return null;
  }
}
