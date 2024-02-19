import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/background/primary_background.dart';
import 'package:tobeto_mobil/pages/review_view/review_list_widget.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: AppBar(
        title: Image.asset(
          logo,
          height: kToolbarHeight - 20,
        ),
      ),
      body: const PrimaryBackgroundWidget(
        child: ReviewListWidget(),
      ),
    );
  }
}
