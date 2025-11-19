import 'package:intl/intl.dart';

String dateFormat(DateTime date, {String format = 'EEE, hh:mm a'}) {
  final DateFormat formatter = DateFormat(format);
  return formatter.format(date);
}
