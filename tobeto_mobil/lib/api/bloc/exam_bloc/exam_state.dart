import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/firebase_models/exam_model.dart';

@immutable
abstract class ExamState {
  final bool isLoading;
  const ExamState({this.isLoading = false});
}

@immutable
class ExamStateInitial extends ExamState {
  const ExamStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class ExamStateLoading extends ExamState {
  const ExamStateLoading({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class ExamStateLoaded extends ExamState {
  final List<ExamModel> exams;
  const ExamStateLoaded(this.exams);
}

@immutable
class ExamStateError extends ExamState {
  final String errorMessage;

  const ExamStateError({
    required this.errorMessage,
  }) : super(isLoading: false);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ExamStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
