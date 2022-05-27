extension DateTimeExtension on DateTime {
  String getHourString() {
    final h = hour / 10 < 1.0 ? '0$hour' : hour.toString();
    final m = minute / 10 < 1.0 ? '0$minute' : minute.toString();
    return '$h:$m';
  }

  String getDateString() {
    final d = day / 10 < 1.0 ? '0$day' : day.toString();
    final m = month / 10 < 1.0 ? '0$month' : month.toString();
    return '$d/$m/$year';
  }

  String getWeekdayString() {
    switch (weekday) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return 'The day that never comes.';
    }
  }
}
