import 'package:tobeto_mobil/api/business/services/education_service.dart';
import 'package:tobeto_mobil/models/calendar/event_model.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';

class CalendarService {
  final EducationService _educationService;

  CalendarService._private(this._educationService);

  static final _instance = CalendarService._private(
    EducationService.instance(),
  );

  factory CalendarService.instance() {
    return _instance;
  }

  Future<List<EventModel>> fetchAll() async {
    final educations = await _educationService.getAllEducation();

    return _mapData(educations);
  }

  List<EventModel> _mapData(List<EducationModel> educations) {
    final List<EventModel> list = [];

    for (EducationModel education in educations) {
      final event = EventModel(
        title: education.title,
        description: education.title,
        from: education.startDate,
        to: education.endDate,
      );

      list.add(event);
    }

    return list;
  }
}
