import 'package:tobeto_mobil/models/education/content_model.dart';
import 'package:tobeto_mobil/models/education/enums/education_status.dart';

class EducationModels {
  final String id;
  final String userId;
  final String title; //egitimin basligi
  final String category;
  final String thumbnail; // egitim kapak fotografi
  final String startDate;
  final String endDate;
  final String creator;
  final bool? isBookmark;
  final EducationStatus status;
  final List<ContentModel> content;

  EducationModels({
    required this.id,
    required this.userId,
    required this.title,
    required this.category,
    required this.thumbnail,
    required this.startDate,
    required this.endDate,
    required this.creator,
    required this.status,
    required this.content,
    this.isBookmark = false,
  });
}
