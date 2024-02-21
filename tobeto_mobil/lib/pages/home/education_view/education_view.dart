import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_item.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_card.dart';

class EducationView extends StatelessWidget {
  const EducationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ...EducationCategoryItem.values.map((category) {
          return EducationCategoryCard(
            title: category.toTitle(),
            educationCategory: category.toString(),
          );
        }),
      ],
    );
  }
}
