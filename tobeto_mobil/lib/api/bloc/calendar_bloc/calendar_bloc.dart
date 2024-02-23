import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/calendar_bloc/calendar_event.dart';
import 'package:tobeto_mobil/api/bloc/calendar_bloc/calendar_state.dart';
import 'package:tobeto_mobil/models/calendar/event_model.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(const CalendarStateInitialize()) {
    on<CalendarEventFetch>((event, emit) => _onFetch(event, emit));
  }

  void _onFetch(CalendarEventFetch event, Emitter<CalendarState> emit) async {
    emit(const CalendarStateLoading());

    final List<EventModel> meetings = <EventModel>[];
    final DateTime today = DateTime.now();

    meetings.addAll([
      EventModel(
        title: "Freelance Work",
        description: "Doctor app development.",
        from: DateTime.now(),
        to: DateTime(today.year, today.month, today.day + 2),
        backgroundColor: const Color.fromARGB(255, 207, 27, 27),
        isAllDay: true,
      ),
      EventModel(
        title: "Conference",
        description: "IT conference at the office.",
        from: DateTime(today.year, today.month, today.day, 9, 0, 0),
        to: DateTime(today.year, today.month, today.day, 11, 0, 0),
        backgroundColor: const Color(0xFF0F8644),
        isAllDay: false,
      ),
      EventModel(
        title: "Meeting",
        description: "Project meeting with team members.",
        from: DateTime(today.year, today.month, today.day, 13, 0, 0),
        to: DateTime(today.year, today.month, today.day, 14, 0, 0),
        backgroundColor: const Color(0xFF0F8644),
        isAllDay: false,
      ),
    ]);

    emit(CalendarStateFetched(events: meetings));
  }
}
