class ReviewModel {
  final String title;

  ReviewModel({
    required this.title,
  });

  factory ReviewModel.fromMap(Map<String, dynamic> map) {
    return ReviewModel(
      title: map["title"] as String,
    );
  }
}
