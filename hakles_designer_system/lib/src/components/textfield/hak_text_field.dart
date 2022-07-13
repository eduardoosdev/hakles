import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../hak_colors.dart';

class HakTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? labelText;
  final bool autofocus;
  final String? errorText;
  final String? helperText;
  final String? counterText;
  final String? auxiliaryText;
  final int maxLines;
  final int minLines;
  final int? maxLength;
  final Widget? suffixIconWidget;
  final Widget? prefixIconWidget;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function? prefixIconOnPressed;
  final Function? suffixIconOnPressed;
  final bool? enabled;
  final ValueChanged<String>? onSubmitted;
  final TextInputAction? textInputAction;
  final Function(String value)? onChanged;
  final FocusNode? focusNode;
  final EdgeInsets? margin;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? decoration;

  const HakTextField({
    Key? key,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.labelText,
    this.autofocus = false,
    this.errorText,
    this.auxiliaryText,
    this.prefixIcon,
    this.maxLength,
    this.suffixIcon,
    this.helperText,
    this.counterText,
    this.onChanged,
    this.enabled = true,
    this.prefixIconOnPressed,
    this.suffixIconOnPressed,
    this.textInputAction,
    this.onSubmitted,
    this.focusNode,
    this.maxLines = 1,
    this.minLines = 1,
    this.inputFormatters,
    this.margin,
    this.decoration,
    this.suffixIconWidget,
    this.prefixIconWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextField(
        inputFormatters: inputFormatters,
        minLines: minLines,
        keyboardType: keyboardType,
        autofocus: autofocus,
        maxLength: maxLength,
        controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        focusNode: focusNode,
        enabled: enabled,
        onSubmitted: this.onSubmitted,
        textInputAction: this.textInputAction,
        maxLines: maxLines,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: HakColors.white),
        decoration: decoration ??
            InputDecoration(
              isDense: true,
              errorText: errorText,
              counterText: counterText,
              contentPadding: EdgeInsets.only(
                right: 24,
                left: 24,
                top: 10,
                bottom: 10,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              helperText: helperText,
              suffixIcon: suffixIconWidget ?? _buildSuffixIcon(context),
              prefixIcon: prefixIconWidget ?? _buildPrefixIcon(context),
              filled: true,
              fillColor: Colors.transparent,
              labelStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: HakColors.white.withOpacity(0.6),
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: HakColors.white.withOpacity(0.5)),
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: HakColors.white),
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: HakColors.white),
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              errorMaxLines: 3,
              helperMaxLines: 3,
              labelText: labelText,
            ),
      ),
    );
  }

  GestureDetector? _buildPrefixIcon(BuildContext context) {
    if (prefixIcon == null) return null;

    return GestureDetector(
      child: Icon(prefixIcon,
          color: errorText == null ? null : Theme.of(context).errorColor),
      onTap: prefixIconOnPressed as void Function()?,
    );
  }

  GestureDetector? _buildSuffixIcon(BuildContext context) {
    if (suffixIcon == null) {
      return null;
    }
    return GestureDetector(
      child: Icon(suffixIcon,
          color: errorText == null ? null : Theme.of(context).errorColor),
      onTap: suffixIconOnPressed as void Function()?,
    );
  }
}
