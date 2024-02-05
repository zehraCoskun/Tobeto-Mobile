import 'package:tobeto_mobil/models/firebase_models/user_model.dart';

class UserCreateRequest {
  final String fullName;
  final String email;

  UserCreateRequest({
    required this.fullName,
    required this.email,
  });

  UserModel toModel() {
    return UserModel(
      fullName: fullName,
      email: email,
    );
  }
}
