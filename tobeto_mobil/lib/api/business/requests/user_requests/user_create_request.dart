import 'package:tobeto_mobil/api/business/requests/profile_requests/profile_create_request.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';
import 'package:uuid/uuid.dart';

class UserCreateRequest {
  final ProfileCreateRequest profileCreateRequest;

  UserCreateRequest({
    required this.profileCreateRequest,
  });

  UserModel toModel() {
    return UserModel(
      id: const Uuid().v4(),
      profile: profileCreateRequest.toModel(),
    );
  }
}
