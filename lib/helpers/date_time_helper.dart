extension DateTimeHelper on DateTime {
  String get toApiFormat{
    return "$year-$month-$day";
  }
}