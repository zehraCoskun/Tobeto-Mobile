import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';
import 'package:tobeto_mobil/api/repository/user_repository.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';

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

  Future<void> update(String docId, UserUpdateRequest request) async {
    await _userRepository.update(
      docId,
      request.toModel().toMap(),
    );
  }

  Future<UserModel> fetchUserData(String docId) async {
    final userDoc = await _userRepository.findWithDocId(docId);
    if (userDoc.exists) {
      final userData = userDoc.data();
      return UserModel.fromMap(userData!);
    } else {
      throw Exception('User not found');
    }
  }
}
