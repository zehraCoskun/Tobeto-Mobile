import 'package:tobeto_mobil/models/calendar/event_model.dart';

class CalendarModel {
  final String userId;
  List<EventModel>? events;

  CalendarModel({
    required this.userId,
    this.events,
  });

  factory CalendarModel.fromMap(Map<String, dynamic> map) {
    return CalendarModel(
      userId: map["user_id"] as String,
      events: (map["events"] as List<dynamic>?)
          ?.map((event) => EventModel.fromMap(event))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    final classMap = _createClassMap();

    final Map<String, dynamic> map = {};

    for (MapEntry<String, dynamic> entry in classMap.entries) {
      if (entry.value != null) {
        map.addEntries([entry]);
      }
    }
    return map;
  }

  Map<String, dynamic> _createClassMap() {
    return {
      "user_id": userId,
      "events": events?.map((e) => e.toMap()),
    };
  }
}
