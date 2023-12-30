import 'package:tobeto_mobil/models/survey_model.dart';

abstract class SurveyState {}

class SurveyInitial extends SurveyState {}

class SurveyLoading extends SurveyState {}

class SurveyLoaded extends SurveyState {
  final SurveyModel surveyModel;

  SurveyLoaded({
    required this.surveyModel,
  });
}

class SurveyError extends SurveyState {}

class SurveySuccess extends SurveyState {}