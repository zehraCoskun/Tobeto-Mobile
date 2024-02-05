import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/repository/user_repository.dart';

class UserService {
  final UserRepository _userRepository;

  const UserService(this._userRepository);

  Future<void> create(String docId, UserCreateRequest request) async {
    //check if user already exists

    await _userRepository.create(
      docId,
      request.toModel().toMap(),
    );
  }
}
