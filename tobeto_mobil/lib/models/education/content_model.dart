import 'package:tobeto_mobil/models/education/enums/education_category.dart';

abstract class ContentModel {
  final String id;
  final String title;
  final EducationCategory type;

  ContentModel({
    required this.id,
    required this.title,
    required this.type,
  });
}
