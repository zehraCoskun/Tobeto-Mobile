import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_mobil/models/catalog/catalog_category.dart';

class CatalogModel {
  final String title;
  final String thumbnail;
  final String totalDuration;
  final DateTime releaseDate;
  final CatalogCategory category;
  final String? mainHeadline;
  final String content;
  final DateTime startDate;
  final DateTime endDate;
  final String trainer;

  CatalogModel({
    required this.title,
    required this.thumbnail,
    required this.totalDuration,
    required this.releaseDate,
    required this.category,
    this.mainHeadline,
    required this.content,
    required this.startDate,
    required this.endDate,
    required this.trainer,
  });

  factory CatalogModel.fromMap(Map<String, dynamic> map) {
    return CatalogModel(
      title: map["title"] as String,
      thumbnail: map["thumbnail"] as String,
      totalDuration: map["totalDuration"] as String,
      releaseDate: (map["releaseDate"] as Timestamp).toDate(),
      mainHeadline: map["mainHeadline"] as String?,
      category: CatalogCategory.values.firstWhere(
        (element) => element.name == map["category"],
      ),
      content: map["content"] as String,
      startDate: (map["startDate"] as Timestamp).toDate(),
      endDate: (map["endDate"] as Timestamp).toDate(),
      trainer: map["trainer"] as String,
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
      "title": title,
      "thumbnail": thumbnail,
      "totalDuration": totalDuration,
      "releaseDate": releaseDate,
      "mainHeadline": mainHeadline,
      "category": category.name,
      "content": content,
      "startDate": startDate,
      "endDate": endDate,
      "trainer": trainer,
    };
  }
}
