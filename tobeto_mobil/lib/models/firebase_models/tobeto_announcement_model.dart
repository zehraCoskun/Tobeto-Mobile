import 'package:tobeto_mobil/core/models/entity.dart';

class TobetoNewsModel extends Entity {
  //final String type;
  //final String organisation;
  final String title;
  final String content;
  //final DateTime date;

  TobetoNewsModel({
    //required this.type,
    //required this.organisation,
    required this.title,
    required this.content,
    //required this.date,
  });

  factory TobetoNewsModel.fromMap(Map<String, dynamic> map) {
    return TobetoNewsModel(
      //type: map["type"] as String,
      //organisation: map["organisation"] as String,
      title: map["title"] as String,
      content: map["content"] as String,
      //date: (map["date"] as Timestamp).toDate(),
    );
  }
}
