import 'package:tobeto_mobil/api/business/requests/profile_requests/profile_create_request.dart';

class UserCreateRequest {
  final String id;
  final ProfileCreateRequest profileRequest;

  UserCreateRequest({
    required this.id,
    required this.profileRequest,
  });
}
