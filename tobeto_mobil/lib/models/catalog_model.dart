import 'package:cloud_firestore/cloud_firestore.dart';

class CatalogModel {
  final String title; //listede gözüken başlığı
  final String thumbnail; // listedeki kapak resmi
  final String totalDuration; //eğitimin süresi
  final DateTime releaseDate; //yayınlanma tarihi
  final String url; //video linki
  final DateTime startDate; //derslerin kullanılabileceği başlangıç tarihi
  final DateTime endDate;

  final String category; // free - paid
  final String education; // software- softskill
  final String level; // beginner - intermediate - advanced
  final String trainer; //eğitmen isimleri

  CatalogModel({
    required this.title,
    required this.thumbnail,
    required this.totalDuration,
    required this.releaseDate,
    required this.url,
    required this.startDate,
    required this.endDate,
    required this.category,
    required this.education,
    required this.level,
    required this.trainer,
  });

  factory CatalogModel.fromMap(Map<String, dynamic> map) {
    return CatalogModel(
      title: map["title"] as String,
      thumbnail: map["thumbnail"] as String,
      totalDuration: map["total_duration"] as String,
      releaseDate: (map["release_date"] as Timestamp).toDate(),
      url: map["url"] as String,
      startDate: (map["start_date"] as Timestamp).toDate(),
      endDate: (map["end_date"] as Timestamp).toDate(),
      category: map["category"] as String,
      education: map["education"] as String,
      level: map["level"] as String,
      trainer: map["trainer"] as String,
    );
  }
}
