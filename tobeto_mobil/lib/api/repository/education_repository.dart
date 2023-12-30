import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/models/education_model.dart';
//import 'package:http/http.dart' as http;

class EducationRepository {
  Future<bool> addEducation(EducationModel educationModel) {
    return Future(() => true);
  }


  Future<bool> updateEducation(EducationModel educationModel) {
    return Future(() => true);
  }


  Future<bool> deleteEducation(String id) {
    return Future(() => true);
  }


  Future<EducationModel?> getEducation(String id) {
    return Future(() => educationModelData.firstWhere((element) => element.id == id));
  }


  Future<List<EducationModel>> getAllEducations() {
    return Future(() => educationModelData);
  }
}