import 'package:tobeto_mobil/models/education/education_model.dart';

abstract class EducationsState {}

class EducationsInitial extends EducationsState {}

class EducationsLoading extends EducationsState {}

class EducationsLoaded extends EducationsState {
  final List<EducationModel> educationModels;

  EducationsLoaded({
    required this.educationModels,
  });
}

class EducationsError extends EducationsState {}

class EducationsSuccess extends EducationsState {}