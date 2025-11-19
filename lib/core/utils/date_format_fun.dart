import 'package:intl/intl.dart';

///  "2025-11-19T08:00:00Z"
DateTime strToDate(String date, {String format = 'yyyy-MM-ddTHH:mm:ssZ'}) {
  final DateFormat formatter = DateFormat(format);
  try {
    return formatter.parse(date);
  } catch (e) {
    return DateTime.now();
  }
}

String dateFormat(DateTime date, {String format = 'EEE, hh:mm a'}) {
  final DateFormat formatter = DateFormat(format);
  return formatter.format(date);
}
