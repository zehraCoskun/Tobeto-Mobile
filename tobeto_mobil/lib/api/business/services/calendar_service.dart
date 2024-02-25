import 'package:tobeto_mobil/api/repository/calendar_repository.dart';
import 'package:tobeto_mobil/models/calendar/event_model.dart';

class CalendarService {
  final CalendarRepository _calendarRepository;

  CalendarService._private(this._calendarRepository);

  static final _instance = CalendarService._private(
    CalendarRepository.instance(),
  );

  factory CalendarService.instance() {
    return _instance;
  }

  Stream<List<EventModel>> stream() {
    final stream = _calendarRepository.stream();

    return stream.map(
      (event) => event.docs.map((e) => EventModel.fromMap(e.data())).toList(),
    );
  }
}
