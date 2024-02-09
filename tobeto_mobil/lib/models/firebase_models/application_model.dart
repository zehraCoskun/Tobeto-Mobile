import 'package:tobeto_mobil/core/entities/entity.dart';

class ApplicationModel extends Entity {
  final String state;
  final String title;
  final String text1;
  final String text2;

  ApplicationModel({
    required this.state,
    required this.title,
    required this.text1,
    required this.text2,
  });

  factory ApplicationModel.fromMap(Map<String, dynamic> map) {
    return ApplicationModel(
      state: map["state"] as String,
      title: map["title"] as String,
      text1: map["text1"] as String,
      text2: map["text2"] as String,
    );
  }
}
