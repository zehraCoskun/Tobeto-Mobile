import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/models/exam_model.dart';
//import 'package:http/http.dart' as http;

class ExamRepository {
  Future<bool> addExam(ExamModel examModel) {
    return Future(() => true);
  }


  Future<bool> updateExam(ExamModel examModel) {
    return Future(() => true);
  }

  Future<bool> deleteExam(String id) {
    return Future(() => true);
  }


  Future<ExamModel?> getExam(String id) {
    return Future(() => examModelData.firstWhere((element) => element.id == id));
  }


  Future<List<ExamModel>> getAllExams() {
    return Future(() => examModelData);
  }
}