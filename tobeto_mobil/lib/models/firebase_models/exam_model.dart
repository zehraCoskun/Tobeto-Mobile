class ExamModel {
  final String title;
  final String detail;
  final String duration;
  final bool isExpire;

  ExamModel({
    required this.title,
    required this.detail,
    required this.duration,
    required this.isExpire,
  });

  factory ExamModel.fromMap(Map<String, dynamic> map) {
    return ExamModel(
      title: map["title"] as String,
      detail: map["detail"] as String,
      duration: map["duration"] as String,
      isExpire: map["is_expire"] as bool,
    );
  }
}
