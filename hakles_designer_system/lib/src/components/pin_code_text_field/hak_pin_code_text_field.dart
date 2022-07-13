import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../hakles_designer_system.dart';

class HakPinCodeTextField extends StatelessWidget {
  const HakPinCodeTextField({
    Key? key,
    required this.length,
    this.controller,
    this.enabled,
    this.onChanged,
    this.onCompleted,
    this.error = false,
    this.focusNode,
  }) : super(key: key);

  final TextEditingController? controller;
  final bool? enabled;
  final bool error;
  final int length;
  final FocusNode? focusNode;
  final Function(String text)? onChanged;
  final Function(String text)? onCompleted;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      controller: controller,
      animationCurve: Curves.ease,
      animationDuration: Duration(milliseconds: 300),
      animationType: AnimationType.scale,
      errorAnimationDuration: 500,
      focusNode: focusNode,
      length: length,
      enabled: enabled ?? true,
      onChanged: onChanged ?? (_) {},
      onCompleted: onCompleted,
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      textStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Color(0xff6F829A),
          ),
      pinTheme: PinTheme(
        fieldHeight: 46,
        fieldWidth: 46,
        borderRadius: BorderRadius.circular(8),
        borderWidth: 1,
        shape: PinCodeFieldShape.box,
        inactiveFillColor: error
            ? HakColors.error.withOpacity(0.1)
            : HakColors.backgroudpinInputField,
        errorBorderColor: error
            ? HakColors.error.withOpacity(0.1)
            : HakColors.backgroudpinInputField,
        disabledColor: error
            ? HakColors.error.withOpacity(0.1)
            : HakColors.backgroudpinInputField,
        selectedFillColor: error
            ? HakColors.error.withOpacity(0.1)
            : HakColors.backgroudpinInputField,
        activeFillColor: error
            ? HakColors.error.withOpacity(0.1)
            : HakColors.backgroudpinInputField,
        selectedColor: error
            ? HakColors.error.withOpacity(0.1)
            : HakColors.backgroudpinInputField,
        activeColor: error
            ? HakColors.error.withOpacity(0.1)
            : HakColors.backgroudpinInputField,
        inactiveColor: error
            ? HakColors.error.withOpacity(0.1)
            : HakColors.backgroudpinInputField,
      ),
    );
  }
}
