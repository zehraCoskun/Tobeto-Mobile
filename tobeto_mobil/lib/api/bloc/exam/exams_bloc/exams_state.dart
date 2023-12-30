import 'package:tobeto_mobil/models/exam_model.dart';

abstract class ExamsState {}

class ExamsInitial extends ExamsState {}

class ExamsLoading extends ExamsState {}

class ExamsLoaded extends ExamsState {
  final List<ExamModel> examModels;

  ExamsLoaded({
    required this.examModels,
  });
}

class ExamsError extends ExamsState {}

class ExamsSuccess extends ExamsState {}