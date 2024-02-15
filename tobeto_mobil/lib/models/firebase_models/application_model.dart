import 'package:tobeto_mobil/core/entities/entity.dart';

class ApplicationModel extends Entity {
  final String state;
  final String title;
  final bool isPass1;
  final String stage1;
  final bool isPass2;
  final String stage2;

  ApplicationModel({
    required this.state,
    required this.title,
    required this.isPass1,
    required this.stage1,
    required this.isPass2,
    required this.stage2,
  });

  factory ApplicationModel.fromMap(Map<String, dynamic> map) {
    return ApplicationModel(
      state: map["state"] as String,
      title: map["title"] as String,
      isPass1: map["isPass1"] as bool,
      stage1: map["stage1"] as String,
      isPass2: map["isPass2"] as bool,
      stage2: map["stage2"] as String,
      
   
    );
  }
}
