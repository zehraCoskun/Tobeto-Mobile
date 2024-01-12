import 'package:tobeto_mobil/models/education/content_model.dart';

class VideoModel extends ContentModel {
  final String video;
  final String thumbnail;
  final bool isCompleted;

  VideoModel({
    required super.id,
    required super.title,
    required super.type,
    required this.video,
    required this.thumbnail,
    required this.isCompleted,
  });
}
