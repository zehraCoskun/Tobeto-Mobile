import 'package:cloud_firestore/cloud_firestore.dart';

class CatalogModel {
  final String title; //listede gözüken başlığı
  final String thumbnail; // listedeki kapak resmi
  final String totalDuration; //eğitimin süresi
  final DateTime releaseDate; //yayınlanma tarihi
  final String category; //
  final String? mainHeadline; //bir dersin içindeki diğer eğitimleri bir arada toplayan başlık
  final String content; //buraya video linki gelecek sanırım
  final DateTime startDate; //derslerin kullanılabileceği başlangıç tarihi
  final DateTime endDate;
  final String trainer; //eğitmen(burada birden fazla da olabiliyor sitesinde ama bence gerek yok)

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
      category: map["category"] as String,
      content: map["content"] as String,
      startDate: (map["startDate"] as Timestamp).toDate(),
      endDate: (map["endDate"] as Timestamp).toDate(),
      trainer: map["trainer"] as String,
    );
  }
}
