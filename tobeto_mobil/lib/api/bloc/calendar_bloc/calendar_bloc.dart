import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/calendar_bloc/calendar_event.dart';
import 'package:tobeto_mobil/api/bloc/calendar_bloc/calendar_state.dart';
import 'package:tobeto_mobil/api/business/services/calendar_service.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final CalendarService _calendarService;

  CalendarBloc(this._calendarService) : super(const CalendarStateInitialize()) {
    on<CalendarEventFetch>((event, emit) => _onFetch(event, emit));
    on<CalendarEventUpdate>((event, emit) => _onUpdate(event, emit));
  }

  void _onFetch(CalendarEventFetch event, Emitter<CalendarState> emit) async {
    emit(const CalendarStateLoading());

    final result = await _calendarService.getCalendar(event.userId);

    emit(CalendarStateFetched(calendar: result));
  }

  void _onUpdate(CalendarEventUpdate event, Emitter<CalendarState> emit) async {
    emit(const CalendarStateLoading());

    await _calendarService.update(event.request);

    emit(const CalendarStateUpdated());
  }
}
