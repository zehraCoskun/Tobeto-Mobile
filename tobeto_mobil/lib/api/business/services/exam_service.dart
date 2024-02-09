import 'package:tobeto_mobil/api/repository/exam_repository.dart';
import 'package:tobeto_mobil/models/firebase_models/exam_model.dart';

class ExamService {
  final ExamRepository _examRepository;
  const ExamService(this._examRepository);

  Future<List<ExamModel>> getAllExam() async {
    final quertSnapshot = await _examRepository.getAllExam();
    final List<ExamModel> examList = [];

    for (var examDoc in quertSnapshot.docs) {
      if (examDoc.exists) {
        final examData = examDoc.data();
        examList.add(ExamModel.fromMap(examData));
      }
    }
    return examList;
  }
}
