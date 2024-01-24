import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/education_view/education_card.dart';

class EducationList extends StatelessWidget {
  const EducationList({
    Key? key,
    required this.educationList,
  }) : super(key: key);

  final List<EducationModel> educationList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: educationList.length,
      itemBuilder: (context, index) {
        return EducationCard(
          education: educationList[index],
        );
      },
    );
  }
}
