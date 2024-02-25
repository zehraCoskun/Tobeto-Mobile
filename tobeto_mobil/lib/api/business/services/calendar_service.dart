import 'package:tobeto_mobil/api/business/requests/calendar_requests/calendar_update_request.dart';
import 'package:tobeto_mobil/api/repository/calendar_repository.dart';
import 'package:tobeto_mobil/models/calendar/calendar_model.dart';

class CalendarService {
  final CalendarRepository _calendarRepository;

  CalendarService._private(this._calendarRepository);

  static final _instance = CalendarService._private(
    CalendarRepository.instance(),
  );

  factory CalendarService.instance() {
    return _instance;
  }

  Future<void> update(CalendarUpdateRequest request) async {
    final calendar = await getCalendar(request.userId);

    calendar.events?.add(request.event);

    await _calendarRepository.update(request.userId, calendar.toMap());
  }

  Future<CalendarModel> getCalendar(String docId) async {
    final calendar = await _calendarRepository.findOne(docId);

    return CalendarModel.fromMap(calendar.data()!);
  }
}