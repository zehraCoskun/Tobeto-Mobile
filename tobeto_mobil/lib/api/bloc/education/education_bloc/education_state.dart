import 'package:tobeto_mobil/models/education/education_model.dart';

abstract class EducationState {}

class EducationInitial extends EducationState {}

class EducationLoading extends EducationState {}

class EducationLoaded extends EducationState {
  final EducationModel educationModel;

  EducationLoaded({
    required this.educationModel,
  });
}

class EducationError extends EducationState {}

class EducationSuccess extends EducationState {}