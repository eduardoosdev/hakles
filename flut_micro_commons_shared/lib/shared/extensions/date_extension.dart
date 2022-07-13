import 'package:intl/intl.dart';

extension EDateTime on DateTime {
  String format([String format = 'yyyy-MM-dd HH:mm:ss']) {
    final formatter = new DateFormat(format);
    return formatter.format(this);
  }
}
