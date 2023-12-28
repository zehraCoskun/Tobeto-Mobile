import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/education_model.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_card.dart';

class EducationCategoryBody extends StatelessWidget {
  const EducationCategoryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: EducationCard(
              education: EducationModel(
                id: "1",
                title: "Something",
                time: "Some Time",
                thumbnail: "assets/images/ders1.jpg",
              ),
            ),
          );
        },
      ),
    );
  }
}
