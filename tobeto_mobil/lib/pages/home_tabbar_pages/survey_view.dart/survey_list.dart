import 'package:flutter/material.dart';
import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/survey_view.dart/survey_card.dart';

class SurveyList extends StatelessWidget {
  const SurveyList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: surveyModelData.length,
      itemBuilder: (context, index) {
        return const SurveyCard();
      },
    );
  }
}
