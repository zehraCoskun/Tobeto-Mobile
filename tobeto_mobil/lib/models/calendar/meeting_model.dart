import 'package:flutter/material.dart';

class MeetingModel {
  final String? eventName;
  final DateTime from;
  final DateTime to;
  final Color? background;
  final bool? isAllDay;

  MeetingModel({
    this.eventName,
    required this.from,
    required this.to,
    this.background,
    this.isAllDay,
  });
}
