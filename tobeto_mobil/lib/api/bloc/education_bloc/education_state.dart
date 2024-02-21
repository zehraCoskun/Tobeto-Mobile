import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';

@immutable
abstract class EducationState {
  final bool isLoading;
  const EducationState({this.isLoading = false});
}

@immutable
class EducationStateInitial extends EducationState {
  const EducationStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class EducationStateLoading extends EducationState {
  const EducationStateLoading({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class EducationStateLoaded extends EducationState {
  final List<EducationModel> educations;
  const EducationStateLoaded(this.educations);
}

@immutable
class EducationStateError extends EducationState {
  final String errorMessage;

  const EducationStateError({
    required this.errorMessage,
  }) : super(isLoading: false);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EducationStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
