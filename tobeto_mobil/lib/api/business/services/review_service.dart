import 'package:tobeto_mobil/api/repository/review_repository.dart';
import 'package:tobeto_mobil/models/firebase_models/review_model.dart';

class ReviewService {
  final ReviewRepository _reviewRepository;
  const ReviewService(this._reviewRepository);

  Future<List<ReviewModel>> getAllReview() async {
    final quertSnapshot = await _reviewRepository.getAllReview();
    final List<ReviewModel> reviewList = [];

    for (var reviewDoc in quertSnapshot.docs) {
      if (reviewDoc.exists) {
        final reviewData = reviewDoc.data();
        reviewList.add(ReviewModel.fromMap(reviewData));
      }
    }
    return reviewList;
  }
}
