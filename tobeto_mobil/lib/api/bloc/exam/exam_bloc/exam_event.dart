import 'package:tobeto_mobil/models/exam_model.dart';

abstract class ExamEvent {}

class AddExam extends ExamEvent {
  final ExamModel examModel;

  AddExam({
    required this.examModel,
  });
}

class UpdateExam extends ExamEvent {
  final ExamModel examModel;

  UpdateExam({
    required this.examModel,
  });
}

class DeleteExam extends ExamEvent {
  final String id;

  DeleteExam({
    required this.id,
  });
}

class GetExam extends ExamEvent {
  final String id;

  GetExam({
    required this.id,
  });
}