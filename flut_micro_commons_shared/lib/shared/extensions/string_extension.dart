import 'package:intl/intl.dart';

extension EString on String {
  String justTheNumbers() {
    return this.replaceAll(RegExp("[^0-9]"), "");
  }

  String currency({String locale: 'pt_BR', symbol: 'R\$'}) {
    try {
      NumberFormat format = NumberFormat.currency(
        locale: locale,
        symbol: symbol,
      );
      return format.format(num.parse(this));
    } catch (e) {
      return this;
    }
  }
}
