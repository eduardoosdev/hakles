import 'package:flutter/material.dart';

import '../../../hakles_designer_system.dart';

class HakDialog {
  static Future showBasicAlert({
    required BuildContext context,
    required String content,
    bool? useRootNavigator,
    String? title,
    String? textPositiveButton,
    String? textNegativeButton,
    Function(BuildContext context)? onPressedPositiveButton,
    Function(BuildContext context)? onPressedNegativeButton,
  }) async {
    return await showDialog(
      context: context,
      useRootNavigator: useRootNavigator ?? true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: title == null ? null : Text(title),
          content: Text(content),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (onPressedNegativeButton != null)
                  HakButton(
                    text: textNegativeButton ?? "Fechar",
                    type: HakButtonType.text,
                    onPressed: () {
                      onPressedNegativeButton(context);
                    },
                  ),
                if (onPressedPositiveButton != null)
                  HakButton(
                    text: textPositiveButton ?? "Ok",
                    type: HakButtonType.text,
                    onPressed: () {
                      onPressedPositiveButton(context);
                    },
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
