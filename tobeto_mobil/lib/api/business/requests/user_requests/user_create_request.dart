import 'package:tobeto_mobil/models/user/user_model.dart';

class UserCreateRequest {
  final String id;
  final String fullName;
  final String email;

  UserCreateRequest({
    required this.id,
    required this.fullName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return UserModel(
      fullName: fullName,
      email: email,
    ).toMap();
  }
}
