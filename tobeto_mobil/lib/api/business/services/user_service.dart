import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';
import 'package:tobeto_mobil/api/business/responses/user_responses/user_get_response.dart';
import 'package:tobeto_mobil/api/repository/user_repository.dart';

class UserService {
  final UserRepository _userRepository;

  const UserService(this._userRepository);

  Future<void> create(UserCreateRequest request) async {
    final user = request.toModel();

    await _userRepository.create(user);
  }

  Future<void> update(String id, UserUpdateRequest request) async {
    final DocumentSnapshot doc = await _userRepository.get(id);

    await _userRepository.update(doc.id, request.toModel().toMap());
  }

  Future<UserGetResponse?> get(String id) async {
    final user = await _userRepository.get(id);

    return UserGetResponse.fromModel(user.data());
  }
}
