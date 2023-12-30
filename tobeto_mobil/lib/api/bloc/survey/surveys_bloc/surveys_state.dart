import 'package:tobeto_mobil/models/survey_model.dart';

abstract class SurveysState {}

class SurveysInitial extends SurveysState {}

class SurveysLoading extends SurveysState {}

class SurveysLoaded extends SurveysState {
  final List<SurveyModel> surveyModels;

  SurveysLoaded({
    required this.surveyModels,
  });
}

class SurveysError extends SurveysState {}

class SurveysSuccess extends SurveysState {}