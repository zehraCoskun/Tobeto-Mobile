import 'package:tobeto_mobil/api/repository/application_repository.dart';
import 'package:tobeto_mobil/models/firebase_models/application_model.dart';

class ApplicationService {
  final ApplicationRepository _applicationRepository;
  const ApplicationService(this._applicationRepository);

  Future<List<ApplicationModel>> getAllApplication() async {
    final quertSnapshot = await _applicationRepository.getAllApplication();
    final List<ApplicationModel> applicationList = [];

    for (var applicationDoc in quertSnapshot.docs) {
      if (applicationDoc.exists) {
        final applicationData = applicationDoc.data();
        applicationList.add(ApplicationModel.fromMap(applicationData));
      }
    }
    return applicationList;
  }
}
