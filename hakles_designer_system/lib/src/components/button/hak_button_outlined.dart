import 'package:flutter/material.dart';
import 'package:hakles_designer_system/src/components/progress/hak_progress.dart';

class HakButtonOutlined extends StatelessWidget {
  final ButtonStyle? style;

  final Widget? child;
  final String? text;
  final Function? onPressed;
  final Function? onLongPress;
  final bool enabled;
  final bool? loading;

  HakButtonOutlined({
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

    return OutlinedButton(
      onPressed: onPressed as void Function()?,
      onLongPress: onLongPress as void Function()?,
   
      child: _getChild(context)!,
      style: style ?? Theme.of(context).outlinedButtonTheme.style,
    );
  }

  Widget? _getChild(BuildContext context) {
    if (loading != null && loading!)
      return Center(
        child: HakProgress(
          valueColor: Theme.of(context).indicatorColor,
        ),
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
