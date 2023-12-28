class ExamModel {
  final String id;
  final String title;
  final String detail;
  final String duration;

  ExamModel(this.title, this.detail, this.duration, {
    required this.id,
  });
}
