import 'package:tobeto_mobil/models/content_model.dart';

class EducationModel {
  final String id;
  final String title; //egitimin basligi
  final String category;
  final int hour; //egitimin tahmini suresi
  final int likes; //egitimi begenen kisi sayisi
  final String thumbnail; // egitim kapak fotografi
  final String kickOffDate; //egitim baslangic tarihi
  final String? endDate; //egitim bitis tarihi
  final String creator;
  final List<ContentModel> content;

  EducationModel({
    required this.id,
    required this.title,
    required this.category,
    required this.hour,
    required this.likes,
    required this.thumbnail,
    required this.kickOffDate,
    this.endDate,
    required this.creator,
    required this.content,
  });
}
