import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/core/models/entity.dart';
import 'package:tobeto_mobil/models/firebase_models/enums/classroom.dart';
import 'package:tobeto_mobil/models/firebase_models/enums/education_category.dart';

@immutable
class EducationModel extends Entity {
  final String id;
  final String title;
  final String thumbnail;
  final String totalDuration;
  final String content;
  final EducationCategory category;
  final DateTime releaseDate;
  final DateTime startDate;
  final DateTime endDate;
  final String educator;
  final List<Classroom> classes;

  const EducationModel({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.totalDuration,
    required this.content,
    required this.category,
    required this.releaseDate,
    required this.startDate,
    required this.endDate,
    required this.educator,
    required this.classes,
  });

  factory EducationModel.fromMap(Map<String, dynamic> map) {
    return EducationModel(
      id: map["id"] as String,
      title: map["title"] as String,
      thumbnail: map["thumbnail"] as String,
      totalDuration: map["totalDuration"] as String,
      content: map["content"] as String,
      category: EducationCategory.values.firstWhere(
        (element) => element.name == (map["category"] as String),
      ),
      releaseDate: (map["releaseDate"] as Timestamp).toDate(),
      startDate: (map["startDate"] as Timestamp).toDate(),
      endDate: (map["endDate"] as Timestamp).toDate(),
      educator: map["educator"] as String,
      classes: (map["classes"] as List<dynamic>)
          .map((item) => Classroom.values.firstWhere(
                (element) => element.name == item,
              ))
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
      "id": id,
      "title": title,
      "thumbnail": thumbnail,
      "totalDuration": totalDuration,
      "content": content,
      "category": category.name,
      "releaseDate": releaseDate,
      "startDate": startDate,
      "endDate": endDate,
      "educator": educator,
      "classes": classes,
    };
  }
}
