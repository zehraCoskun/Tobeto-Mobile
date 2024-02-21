import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/home_page.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/review_model.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ReviewsCard extends StatelessWidget {
  const ReviewsCard({super.key, required this.reviewModel});
  final ReviewModel reviewModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: builBody(context),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              title: Text(
                noReview,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              actions: [
                TextButton(
                  child: const Text(ok),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  Container builBody(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: TobetoDarkColors.krem,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [containerBasicShadow(), containerBasicShadow(), containerBasicShadow()],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              reviewModel.title,
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_tree_rounded,
                color: TobetoDarkColors.mor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
