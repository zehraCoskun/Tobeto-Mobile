import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class CalendarEvent {
  const CalendarEvent();
}

class CalendarEventFetch implements CalendarEvent {
  const CalendarEventFetch();
}
