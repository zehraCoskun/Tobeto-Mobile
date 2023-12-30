import 'package:tobeto_mobil/models/survey_model.dart';

abstract class SurveyEvent {}

class AddSurvey extends SurveyEvent {
  final SurveyModel surveyModel;

  AddSurvey({
    required this.surveyModel,
  });
}

class UpdateSurvey extends SurveyEvent {
  final SurveyModel surveyModel;

  UpdateSurvey({
    required this.surveyModel,
  });
}

class DeleteSurvey extends SurveyEvent {
  final String id;

  DeleteSurvey({
    required this.id,
  });
}

class GetSurvey extends SurveyEvent {
  final String id;

  GetSurvey({
    required this.id,
  });
}