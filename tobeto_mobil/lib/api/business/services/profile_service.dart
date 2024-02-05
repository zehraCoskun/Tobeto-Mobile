import 'package:tobeto_mobil/api/business/requests/profile_request.dart/profile_create.dart';
import 'package:tobeto_mobil/api/repository/profile_repository.dart';

class ProfileService {
  final ProfileRepository _profileRepository;

  const ProfileService(this._profileRepository);

  Future<void> create(String docId, ProfileCreateRequest request) async {
   // await _profileRepository.create(docId,);
  }
}
