import 'package:tobeto_mobil/models/education/content_model.dart';

class SoftSkillModel extends ContentModel {
  final List<ContentModel> content;

  SoftSkillModel({
    required super.id,
    required super.title,
    required super.type,
    required this.content,
  });
}
