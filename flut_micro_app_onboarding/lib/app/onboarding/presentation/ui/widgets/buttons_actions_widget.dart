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
    return Padding(
      padding: EdgeInsets.only(
        top: 16.0,
        left: 24.0,
        right: 24.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (loading)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: HakProgress(),
              ),
            ),
          if (onPressedBack != null && !loading)
            Expanded(
              child: HakButton(
                text: 'Voltar',
                onPressed: onPressedBack,
              ),
            )
          else if (!loading)
            Expanded(child: SizedBox()),
          if (!loading) SizedBox(width: 32),
          if (onPressedNext != null && !loading)
            Expanded(
              child: HakButton(
                text: 'Próximo',
                onPressed: onPressedNext,
                enabled: enabledNext,
              ),
            ),
        ],
      ),
    );
  }
}
