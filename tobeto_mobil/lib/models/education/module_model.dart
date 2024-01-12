import 'package:tobeto_mobil/models/education/content_model.dart';

class ModuleModel extends ContentModel {
  final List<ContentModel> content;

  ModuleModel({
    required super.id,
    required super.title,
    required super.type,
    required this.content,
  });
}