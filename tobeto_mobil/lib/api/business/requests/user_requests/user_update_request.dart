import 'package:tobeto_mobil/api/business/requests/profile_requests/profile_update_request.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';

class UserUpdateRequest {
  final ProfileUpdateRequest? profileUpdateRequest;

  UserUpdateRequest({
    this.profileUpdateRequest,
  });

  UserModel toModel() {
    return UserModel(
      profile: profileUpdateRequest?.toModel(),
    );
  }
}
