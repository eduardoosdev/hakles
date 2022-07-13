import 'package:flutter/material.dart';

import '../../hakles_designer_system.dart';

class HakAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? bottom;

  const HakAppBar({
    Key? key,
    this.leading,
    this.actions,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconThemeData(
        color: Theme.of(context).appBarTheme.iconTheme?.color,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 56,
              decoration: BoxDecoration(
                gradient: HakColors.primaryGradient,
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.white12,
                  ),
                ),
              ),
              child: Row(
                children: [
                  IconTheme(
                    data: IconThemeData(
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                    ),
                    child: leading ?? Container(),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Row(
                    children: actions ?? [],
                  ),
                ],
              ),
            ),
            if (bottom != null) bottom!,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size?.fromHeight(
        56.0 + (bottom == null ? 0 : 48.0),
      );
}
