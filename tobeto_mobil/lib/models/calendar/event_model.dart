import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EventModel {
  final String title;
  final String description;
  final DateTime from;
  final DateTime to;
  final Color backgroundColor;

  EventModel({
    required this.title,
    required this.description,
    required this.from,
    required this.to,
    this.backgroundColor = Colors.lightGreen,
  });

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      title: map["title"] as String,
      description: map["description"] as String,
      from: (map["from"] as Timestamp).toDate(),
      to: (map["to"] as Timestamp).toDate(),
      backgroundColor: Color(int.parse(map["background_color"] as String)),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "description": description,
      "from": from,
      "to": to,
      "background_color": backgroundColor.value.toString(),
    };
  }
}
