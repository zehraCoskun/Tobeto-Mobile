import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/models/application_model.dart';
//import 'package:http/http.dart' as http;

class ApplicationRepository {
  Future<bool> addApplication(ApplicationModel applicationModel) {
    return Future(() => true);
  }

  Future<bool> updateApplication(ApplicationModel applicationModel) {
    return Future(() => true);
  }

  Future<bool> deleteApplication(String id) {
    return Future(() => true);
  }

  Future<ApplicationModel?> getApplication(String id) {
    return Future(
      () => applicationModelData.firstWhere((element) => element.id == id),
    );
  }

  Future<List<ApplicationModel>> getAllApplications() {
    return Future(
      () => applicationModelData,
    );
  }
}
