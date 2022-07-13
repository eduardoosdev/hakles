import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskFormatterUtils {
  static cellPhone() {
    return new MaskTextInputFormatter(
      mask: '(##) #####-####',
      filter: {
        "#": RegExp(
          r'[0-9]',
        ),
      },
    );
  }

  static currency({String locale: 'pt_BR', symbol: 'R\$'}) {
    return TextInputFormatter.withFunction((oldValue, newValue) {
      String newText = newValue.text
          // .replaceAll(MoneyTextFormField._cents, '')
          .replaceAll('.', '')
          .replaceAll(',', '')
          .replaceAll('_', '')
          .replaceAll('-', '');

      String value = newText;
      int cursorPosition = newText.length;

      if (newText.isNotEmpty) {
        value = _formatCurrency(
          double.parse(newText),
          locale,
          symbol,
        );
        cursorPosition = value.length;
      }

      return TextEditingValue(
        text: value,
        selection: TextSelection.collapsed(
          offset: cursorPosition,
        ),
      );
    });
  }

  static String _formatCurrency(num value, String locale, String symbol) {
    ArgumentError.checkNotNull(value, 'value');

    value = value / 100;

    return NumberFormat.currency(
      // customPattern: '###.###,##',
      customPattern: '###,###,###,###,###,###.##',
      locale: locale,
      symbol: symbol,
    ).format(value);
  }
}
