import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_mobil/models/catalog/sort_by.dart';
import 'package:tobeto_mobil/models/enums/catalog_category.dart';
import 'package:tobeto_mobil/models/enums/catalog_education.dart';
import 'package:tobeto_mobil/models/enums/catalog_language.dart';
import 'package:tobeto_mobil/models/enums/catalog_level.dart';

class CatalogModel {
  final String title;
  final String thumbnail;
  final String totalDuration;
  final String url;

  final DateTime releaseDate;
  final DateTime startDate;
  final DateTime endDate;

  final CatalogLanguage language;
  final CatalogCategory category;
  final CatalogEducation education;
  final CatalogLevel level;
  final String trainer;

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

extension CatalogSort on List<CatalogModel> {
  void sortBy(SortBy? sort) {
    if (sort == null) return;

    switch (sort.field) {
      case CatalogField.title:
        this.sort((a, b) => a.title.compareTo(b.title));
      case CatalogField.totalDuration:
        this.sort((a, b) => a.totalDuration.compareTo(b.totalDuration));
      case CatalogField.startDate:
        this.sort((a, b) => a.startDate.compareTo(b.startDate));
      case CatalogField.language:
        this.sort((a, b) => a.language.name.compareTo(b.language.name));
      case CatalogField.category:
        this.sort((a, b) => a.category.name.compareTo(b.category.name));
      case CatalogField.education:
        this.sort((a, b) => a.education.name.compareTo(b.education.name));
      case CatalogField.level:
        this.sort((a, b) => a.level.name.compareTo(b.level.name));
      case CatalogField.trainer:
        this.sort((a, b) => a.trainer.compareTo(b.trainer));
    }

    if (!sort.ascending) {
      reversed.toList();
    }
  }
}
