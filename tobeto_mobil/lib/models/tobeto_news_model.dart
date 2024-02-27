import 'package:tobeto_mobil/core/models/entity.dart';

class TobetoNewsModel extends Entity {
  final String content;
  final String imageUrl;

  TobetoNewsModel({
    required this.content,
    required this.imageUrl,
  });

  factory TobetoNewsModel.fromMap(Map<String, dynamic> map) {
    return TobetoNewsModel(
      content: map["content"] as String,
      imageUrl: map["image_url"] as String,
    );
  }
}
