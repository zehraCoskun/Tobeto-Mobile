import 'package:tobeto_mobil/api/repository/education_repository.dart';
import 'package:tobeto_mobil/models/firebase_models/education_model.dart';

class EducationService {
  final EducationRepository _educationRepository;
  const EducationService(this._educationRepository);

  Future<List<EducationModel>> getAllEducation() async {
    final querSnapshot = await _educationRepository.getAllEducation();
    final List<EducationModel> educationList = [];

    for (var educationDoc in querSnapshot.docs) {
      if (educationDoc.exists) {
        final educationData = educationDoc.data();
        educationList.add(EducationModel.fromMap(educationData));
      }
    }
    return educationList;
  }
}
