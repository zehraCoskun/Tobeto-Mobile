import 'package:tobeto_mobil/models/education/enums/content_model_type.dart';

abstract class ContentModel {
  final String id;
  final String title;
  final ContentModelType type;

  ContentModel({
    required this.id,
    required this.title,
    required this.type,
  });
}
