import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_body.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_header.dart';

class EducationCategoryCard extends StatelessWidget {
  const EducationCategoryCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Column(
          children: [
            EducationCategoryHeader(title: title),
            const EducationCategoryBody(),
          ],
        ),
      ),
    );
  }
}