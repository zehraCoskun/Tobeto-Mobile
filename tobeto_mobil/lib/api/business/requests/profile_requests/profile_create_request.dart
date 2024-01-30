import 'package:tobeto_mobil/models/firebase_models/profile_model.dart';

class ProfileCreateRequest {
  final String fullName;
  final String email;

  ProfileCreateRequest({
    required this.fullName,
    required this.email,
  });

  ProfileModel toModel() {
    return ProfileModel(
      fullName: fullName,
      email: email,
    );
  }
}
