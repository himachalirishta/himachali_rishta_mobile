import 'package:flutter/material.dart';

extension DateTimeHelper on DateTime {
  String get toApiFormat {
    return "$year-$month-$day";
  }

  String get toDisplayFormat {
    return "${"${day}".padLeft(2, '0')}-${"${month}".padLeft(2, '0')}-$year";
  }
}

extension TimeOfDayHelper on TimeOfDay {
  String get toDisplayFormat {
    return "${"${hour}".padLeft(2, '0')}:${"${minute}".padLeft(2, '0')}";
  }

  String get toDisplayFormatWithAmPm {
    int amPmHour = hour <= 12 ? hour : hour % 12;
    String amPm = hour < 12 ? "AM" : "PM";
    return "${"${amPmHour}".padLeft(2, '0')}:${"${minute}".padLeft(2, '0')} $amPm";
  }
}
