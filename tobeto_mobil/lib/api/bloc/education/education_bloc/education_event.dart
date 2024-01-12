import 'package:tobeto_mobil/models/education/education_model.dart';

abstract class EducationEvent {}

class AddEducation extends EducationEvent {
  final EducationModel educationModel;

  AddEducation({
    required this.educationModel,
  });
}

class UpdateEducation extends EducationEvent {
  final EducationModel educationModel;

  UpdateEducation({
    required this.educationModel,
  });
}

class DeleteEducation extends EducationEvent {
  final String id;

  DeleteEducation({
    required this.id,
  });
}

class GetEducation extends EducationEvent {
  final String id;

  GetEducation({
    required this.id,
  });
}