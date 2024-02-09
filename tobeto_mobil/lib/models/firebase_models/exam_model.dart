class ExamModel {
  final String title;
  final String detail;
  final String duration;

  ExamModel({
    required this.title,
    required this.detail,
    required this.duration,
  });

  factory ExamModel.fromMap(Map<String, dynamic> map) {
    return ExamModel(
      title: map["title"] as String,
      detail: map["detail"] as String,
      duration: map["duration"] as String,
    );
  }
}
