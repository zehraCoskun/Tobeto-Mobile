import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/models/calendar/event_model.dart';

@immutable
abstract class CalendarState {
  const CalendarState();
}

class CalendarStateInitialize extends CalendarState {
  const CalendarStateInitialize();
}

class CalendarStateLoading extends CalendarState {
  const CalendarStateLoading();
}

class CalendarStateFetched extends CalendarState {
  final List<EventModel> events;

  const CalendarStateFetched({
    required this.events,
  });
}

class CalendarStateUpdated extends CalendarState {
  const CalendarStateUpdated();
}
