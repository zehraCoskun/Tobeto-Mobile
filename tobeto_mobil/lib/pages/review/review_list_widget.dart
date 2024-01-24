//sertifikalarım içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/review_model.dart';
import 'package:tobeto_mobil/pages/review/reviews_card_widget.dart';

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({
    super.key,
    required this.reviewList,
  });
  final List<ReviewModel> reviewList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: reviewList.length,
      itemBuilder: (context, index) {
        return ReviewsCard(
          reviewModel: reviewList[index],
        );
      },
    );
  }
}
