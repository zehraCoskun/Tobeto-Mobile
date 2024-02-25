import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EventModel {
  final String title;
  final String description;
  final DateTime from;
  final DateTime to;
  final Color backgroundColor;
  final bool isAllDay;

  EventModel({
    required this.title,
    required this.description,
    required this.from,
    required this.to,
    this.backgroundColor = Colors.lightGreen,
    this.isAllDay = false,
  });

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      title: map["title"] as String,
      description: map["description"] as String,
      from: (map["from"] as Timestamp).toDate(),
      to: (map["to"] as Timestamp).toDate(),
      backgroundColor: Color(int.parse(map["background_color"] as String)),
      isAllDay: map["is_all_day"] as bool,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "description": description,
      "from": from,
      "to": to,
      "background_color": backgroundColor.value.toString(),
      "is_all_day": isAllDay,
    };
  }
}
