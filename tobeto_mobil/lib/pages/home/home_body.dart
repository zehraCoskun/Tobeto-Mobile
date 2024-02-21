import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/home/announcement_view/announcement_view.dart';
import 'package:tobeto_mobil/pages/home/application_view/application_view.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_view.dart';
import 'package:tobeto_mobil/pages/home/exam_view/exam_view.dart';
import 'package:tobeto_mobil/pages/home/main_view/main_view.dart';
import 'package:tobeto_mobil/pages/home/survey_view/survey_view.dart';

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
      children: const <Widget>[
        MainView(),
        EducationView(),
        AnnouncementView(),
        ExamView(),
        SurveyView(),
        ApplicationView(),
      ],
    );
  }
}
