import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/models/survey_model.dart';
//import 'package:http/http.dart' as http;

class SurveyRepository {
  Future<bool> addSurvey(SurveyModel surveyModel) {
    return Future(() => true);
  }


  Future<bool> updateSurvey(SurveyModel surveyModel) {
    return Future(() => true);
  }


  Future<bool> deleteSurvey(String id) {
    return Future(() => true);
  }


  Future<SurveyModel?> getSurvey(String id) {
    return Future(() => surveyModelData.firstWhere((element) => element.id == id));
  }


  Future<List<SurveyModel>> getAllSurveys() {
    return Future(() => []);
  }
}