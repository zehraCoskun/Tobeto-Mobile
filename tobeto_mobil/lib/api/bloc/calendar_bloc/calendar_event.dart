import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/models/calendar/event_model.dart';

@immutable
abstract class CalendarEvent {
  const CalendarEvent();
}

class CalendarEventFetch implements CalendarEvent {
  final String userId;

  const CalendarEventFetch({
    required this.userId,
  });
}

class CalendarEventCreate implements CalendarEvent {
  final EventModel event;

  const CalendarEventCreate({
    required this.event,
  });
}
