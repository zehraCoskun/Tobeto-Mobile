enum ActivityMapItem {
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december;

  @override
  String toString() {
    switch (this) {
      case ActivityMapItem.january:
        return "Jan";
      case ActivityMapItem.february:
        return "Feb";
      case ActivityMapItem.march:
        return "Mar";
      case ActivityMapItem.april:
        return "Apr";
      case ActivityMapItem.may:
        return "May";
      case ActivityMapItem.june:
        return "Jun";
      case ActivityMapItem.july:
        return "Jul";
      case ActivityMapItem.august:
        return "Aug";
      case ActivityMapItem.september:
        return "Sep";
      case ActivityMapItem.october:
        return "Oct";
      case ActivityMapItem.november:
        return "Nov";
      case ActivityMapItem.december:
        return "Dec";
    }
  }
}
