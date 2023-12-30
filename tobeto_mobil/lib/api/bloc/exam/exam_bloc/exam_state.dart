import 'package:tobeto_mobil/models/exam_model.dart';

abstract class ExamState {}

class ExamInitial extends ExamState {}

class ExamLoading extends ExamState {}

class ExamLoaded extends ExamState {
  final ExamModel examModel;

  ExamLoaded({
    required this.examModel,
  });
}

class ExamError extends ExamState {}

class ExamSuccess extends ExamState {}