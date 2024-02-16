import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/education_category_item.dart';
import 'package:tobeto_mobil/pages/home/announcement_view/announcement_list.dart';
import 'package:tobeto_mobil/pages/home/application_view/application_list.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_card.dart';
import 'package:tobeto_mobil/pages/home/exam_view/exam_list.dart';
import 'package:tobeto_mobil/pages/home/main_view/main_page.dart';
import 'package:tobeto_mobil/pages/home/survey_view/no_surveys_card.dart';

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
        buildMainView(),
        buildEducationView(),
        buildAnnouncementView(),
        buildExamView(),
        buildSurveyView(),
        buildApplicationView(),
      ],
    );
  }

  Widget buildMainView() {
    return const MainPage();
  }

  Widget buildEducationView() {
    return ListView(
      shrinkWrap: true,
      children: [
        ...EducationCategoryItem.values.map((category) {
          return EducationCategory(
            title: category.toTitle(),
            educationCategory: category.toString(),
          );
        }),
      ],
    );
  }

  Widget buildAnnouncementView() {
    return const AnnouncementList();
  }

  Widget buildExamView() {
    return const ExamList();
  }

  Widget buildSurveyView() {
    return const NoSurveysCard();
  }

  Widget buildApplicationView() {
    return const ApplicationList();
  }
}
