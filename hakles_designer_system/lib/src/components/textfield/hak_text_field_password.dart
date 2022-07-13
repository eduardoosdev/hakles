import 'package:flutter/material.dart';

import 'hak_text_field.dart';

class HakTextFieldPassword extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? labelText;
  final bool autofocus;
  final String? errorText;
  final String? helperText;
  final bool? enabled;
  final String? counterText;
  final String? auxiliaryText;
  final Function(String value)? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final Widget? suffixIconWidget;
  final Widget? prefixIconWidget;

  const HakTextFieldPassword({
    Key? key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText,
    this.autofocus = false,
    this.errorText,
    this.helperText,
    this.enabled,
    this.counterText,
    this.auxiliaryText,
    this.onChanged,
    this.onSubmitted,
    this.textInputAction,
    this.focusNode,
    this.decoration,
    this.suffixIconWidget,
    this.prefixIconWidget,
  }) : super(key: key);

  @override
  _HakTextFieldPasswordState createState() => _HakTextFieldPasswordState();
}

class _HakTextFieldPasswordState extends State<HakTextFieldPassword> {
  IconData _suffixIcon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return HakTextField(
      controller: widget.controller,
      obscureText: _suffixIcon == Icons.visibility,
      keyboardType: widget.keyboardType,
      decoration: widget.decoration,
      labelText: widget.labelText,
      autofocus: widget.autofocus,
      errorText: widget.errorText,
      suffixIconWidget: widget.suffixIconWidget,
      prefixIconWidget: widget.prefixIconWidget,
      helperText: widget.helperText,
      enabled: widget.enabled,
      counterText: widget.counterText,
      auxiliaryText: widget.auxiliaryText,
      focusNode: widget.focusNode,
      suffixIcon: _suffixIcon,
      onSubmitted: widget.onSubmitted,
      textInputAction: widget.textInputAction,
      suffixIconOnPressed: _suffixIconOnPressed,
      onChanged: widget.onChanged,
    );
  }

  _suffixIconOnPressed() {
    if (_suffixIcon == Icons.visibility) {
      setState(() {
        _suffixIcon = Icons.visibility_off;
      });

      return;
    }

    setState(() {
      _suffixIcon = Icons.visibility;
    });
  }
}
