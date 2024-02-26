import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tobeto_mobil/models/event/event_model.dart';

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<EventModel> appointments) {
    this.appointments = appointments;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from as DateTime;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to as DateTime;
  }

  @override
  String getSubject(int index) {
    return appointments![index].title as String;
  }

  @override
  Color getColor(int index) {
    return appointments![index].backgroundColor as Color;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay as bool;
  }
}
