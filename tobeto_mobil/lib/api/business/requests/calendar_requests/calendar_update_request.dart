import 'package:tobeto_mobil/models/calendar/calendar_model.dart';
import 'package:tobeto_mobil/models/calendar/event_model.dart';

class CalendarUpdateRequest {
  final String userId;
  final EventModel event;

  CalendarUpdateRequest({
    required this.userId,
    required this.event,
  });

  Map<String, dynamic> toMap() {
    return CalendarModel(
      userId: userId,
      events: [
        event,
      ],
    ).toMap();
  }
}
