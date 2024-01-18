import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tobeto_mobil/models/calendar/meeting_model.dart';

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<MeetingModel> source) {
    appointments = source;
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
    return appointments![index].eventName as String;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background as Color;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay as bool;
  }
}
