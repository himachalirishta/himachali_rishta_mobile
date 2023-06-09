extension DateTimeHelper on DateTime {
  String get toApiFormat {
    return "$year-$month-$day";
  }

  String get toDisplayFormat {
    return "${"${day}".padLeft(2, '0')}-${"${month}".padLeft(2, '0')}-$year";
  }
}
