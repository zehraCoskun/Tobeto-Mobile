import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/models/calendar/calendar_model.dart';

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
  final CalendarModel calendar;

  const CalendarStateFetched({
    required this.calendar,
  });
}

class CalendarStateUpdated extends CalendarState {
  const CalendarStateUpdated();
}
