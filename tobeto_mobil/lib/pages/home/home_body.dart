import 'package:flutter/material.dart';
import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/models/enums/education_category_item.dart';
import 'package:tobeto_mobil/pages/home/announcement_view.dart/announcement_list.dart';
import 'package:tobeto_mobil/pages/home/application_view.dart/application_list.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category.dart';
import 'package:tobeto_mobil/pages/home/exam_view.dart/exam_list.dart';
import 'package:tobeto_mobil/pages/home/survey_view.dart/survey_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: <Widget>[
        ListView(
          shrinkWrap: true,
          children: [
            ...EducationCategoryItem.values.map((category) {
              return EducationCategory(
                title: category.toString(),
              );
            }),
          ],
        ),
        AnnouncementList(
          announcementList: announcementModelData,
        ),
        ExamList(
          examList: examModelData,
        ),
        const SurveyCard(),
        ApplicationList(
          applicationList: applicationModelData,
        ),
      ],
    );
  }
}
