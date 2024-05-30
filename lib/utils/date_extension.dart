import 'package:intl/intl.dart';

extension MyDateTimeExtension on DateTime {
  bool get isThisYear {
    final now = DateTime.now();
    return year == now.year;
  }

  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  bool get isYesterday {
    final now = DateTime.now();
    return DateTime(year, month, day) ==
        DateTime(now.year, now.month, now.day - 1);
  }

  String get humanReadableString {
    if (isThisYear) {
      if (isToday) {
        return DateFormat('HH:mm').format(this);
      }
      if (isYesterday) {
        return 'Yesterday at ' + DateFormat('HH:MM').format(this);
      }
      return DateFormat('dd.MM HH:mm').format(this);
    }

    return DateFormat('dd.MM.yyyy HH:mm').format(this);
  }
}
