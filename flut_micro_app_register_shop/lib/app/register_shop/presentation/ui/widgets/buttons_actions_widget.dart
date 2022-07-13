import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class ButtonsActionsWidget extends StatelessWidget {
  final Function? onPressedNext;
  final Function? onPressedBack;
  final bool enabledNext;
  final bool loading;

  const ButtonsActionsWidget({
    Key? key,
    this.onPressedNext,
    this.onPressedBack,
    this.enabledNext = true,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:
            loading ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
        children: [
          if (loading)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: HakProgress(),
            ),
          if (onPressedBack != null && !loading)
            HakButton(
              text: 'Voltar',
              onPressed: onPressedBack,
            ),
          if (onPressedNext != null && !loading)
            HakButton(
              text: 'Próximo',
              onPressed: onPressedNext,
              enabled: enabledNext,
            ),
        ],
      ),
    );
  }
}
