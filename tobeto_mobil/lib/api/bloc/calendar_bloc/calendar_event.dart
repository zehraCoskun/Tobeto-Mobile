import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/api/business/requests/calendar_requests/calendar_update_request.dart';

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

class CalendarEventUpdate implements CalendarEvent {
  final CalendarUpdateRequest request;

  const CalendarEventUpdate({
    required this.request,
  });
}
