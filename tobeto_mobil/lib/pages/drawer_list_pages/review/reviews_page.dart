import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/primary_background.dart';
import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/review/review_list_widget.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      //userModel: user1,
      appBar: AppBar(
        title: Image.asset(
          logo,
          height: kToolbarHeight - 20,
        ),
      ),
      body: PrimaryBackgroundWidget(
        child: ReviewListWidget(
          reviewList: reviewModelData,
        ),
      ),
    );
  }
}
