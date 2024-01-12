import 'package:tobeto_mobil/models/education/content_model.dart';
import 'package:tobeto_mobil/models/education/virtual_class_session_model.dart';

class VirtualClassModel extends ContentModel {
  final List<VirtualClassSessionModel> content;
  final bool isCompleted;

  VirtualClassModel({
    required super.id,
    required super.title,
    required super.type,
    required this.isCompleted,
    required this.content,
  });
}
