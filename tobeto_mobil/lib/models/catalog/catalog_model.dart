import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_mobil/models/enums/catalog_category.dart';
import 'package:tobeto_mobil/models/enums/catalog_education.dart';
import 'package:tobeto_mobil/models/enums/catalog_language.dart';
import 'package:tobeto_mobil/models/enums/catalog_level.dart';

class CatalogModel {
  final String title; //listede gözüken başlığı
  final String thumbnail; // listedeki kapak resmi
  final String totalDuration; //eğitimin süresi
  final String url; //video linki

  final DateTime releaseDate; //yayınlanma tarihi
  final DateTime startDate; //derslerin başlangıç tarihi
  final DateTime endDate;

  final CatalogLanguage language; //yazılımlı ilgli değilse other
  final CatalogCategory category; // free - paid
  final CatalogEducation education; // software- softskill
  final CatalogLevel level; // beginner - intermediate - advanced
  final String trainer; //eğitmen isimleri

  CatalogModel({
    required this.title,
    required this.thumbnail,
    required this.totalDuration,
    required this.url,
    required this.releaseDate,
    required this.startDate,
    required this.endDate,
    required this.language,
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
      url: map["url"] as String,
      releaseDate: (map["release_date"] as Timestamp).toDate(),
      startDate: (map["start_date"] as Timestamp).toDate(),
      endDate: (map["end_date"] as Timestamp).toDate(),
      language: CatalogLanguage.values.firstWhere(
        (element) => element.name == (map["language"] as String),
      ),
      category: CatalogCategory.values.firstWhere(
        (element) => element.name == (map["category"] as String),
      ),
      education: CatalogEducation.values.firstWhere(
        (element) => element.name == (map["education"] as String),
      ),
      level: CatalogLevel.values.firstWhere(
        (element) => element.name == (map["level"] as String),
      ),
      trainer: map["trainer"] as String,
    );
  }
}
