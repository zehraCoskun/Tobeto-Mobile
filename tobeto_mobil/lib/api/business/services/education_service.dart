import 'package:tobeto_mobil/api/repository/education_repository.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';

class EducationService {
  final EducationRepository _educationRepository;

  const EducationService._(this._educationRepository);

  static final _instance = EducationService._(
    EducationRepository.instance(),
  );

  factory EducationService.instance() {
    return _instance;
  }

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
