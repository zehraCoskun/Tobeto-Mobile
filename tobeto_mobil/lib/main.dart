import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement/announcement_bloc/announcement_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement/announcements_bloc/announcements_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application/application_bloc/application_bloc.dart';
import 'package:tobeto_mobil/api/bloc/application/applications_bloc/applications_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education/education_bloc/education_bloc.dart';
import 'package:tobeto_mobil/api/bloc/education/educations_bloc/educations_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam/exam_bloc/exam_bloc.dart';
import 'package:tobeto_mobil/api/bloc/exam/exams_bloc/exams_bloc.dart';
import 'package:tobeto_mobil/api/bloc/survey/survey_bloc/survey_bloc.dart';
import 'package:tobeto_mobil/api/bloc/survey/surveys_bloc/surveys_bloc.dart';
import 'package:tobeto_mobil/api/repository/announcement_repository.dart';
import 'package:tobeto_mobil/api/repository/application_repository.dart';
import 'package:tobeto_mobil/api/repository/education_repository.dart';
import 'package:tobeto_mobil/api/repository/exam_repository.dart';
import 'package:tobeto_mobil/api/repository/survey_repository.dart';
import 'package:tobeto_mobil/pages/home/home_page.dart';
import 'package:tobeto_mobil/utils/router/route_generator.dart';
import 'package:tobeto_mobil/utils/theme/theme_generator.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeGenerator.lightTheme(),
        darkTheme: ThemeGenerator.darkTheme(),
        themeMode: ThemeMode.system,
        home: const HomePage(),
        //initialRoute: "/login",
        onGenerateRoute: (route) => RouteGenerator.onGenerateRoute(route),
      ),
    ),
  );
}

final dynamic providers = [
  BlocProvider(
    create: (context) => SurveyBloc(
      surveyRepository: SurveyRepository(),
    ),
  ),
  BlocProvider(
    create: (context) => SurveysBloc(
      surveyRepository: SurveyRepository(),
    ),
  ),
  BlocProvider(
    create: (context) => EducationBloc(
      educationRepository: EducationRepository(),
    ),
  ),
  BlocProvider(
    create: (context) => EducationsBloc(
      educationRepository: EducationRepository(),
    ),
  ),
  BlocProvider(
    create: (context) => AnnouncementBloc(
      announcementRepository: AnnouncementRepository(),
    ),
  ),
  BlocProvider(
    create: (context) => AnnouncementsBloc(
      announcementRepository: AnnouncementRepository(),
    ),
  ),
  BlocProvider(
    create: (context) => ApplicationBloc(
      applicationRepository: ApplicationRepository(),
    ),
  ),
  BlocProvider(
    create: (context) => ApplicationsBloc(
      applicationRepository: ApplicationRepository(),
    ),
  ),
  BlocProvider(
    create: (context) => ExamBloc(
      examRepository: ExamRepository(),
    ),
  ),
  BlocProvider(
    create: (context) => ExamsBloc(
      examRepository: ExamRepository(),
    ),
  ),
];
