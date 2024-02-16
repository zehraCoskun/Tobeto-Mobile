import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';
import 'package:tobeto_mobil/api/business/services/storage_service.dart';
import 'package:tobeto_mobil/api/repository/user_repository.dart';
import 'package:tobeto_mobil/models/firebase_models/user/user_model.dart';

class UserService {
  final UserRepository _userRepository;
  final StorageService _storageService;

  UserService._private(this._userRepository, this._storageService);

  static final _instance = UserService._private(
    UserRepository.instance(),
    StorageService.instance(),
  );

  factory UserService.instance() {
    return _instance;
  }

  Future<void> create(UserCreateRequest request) async {
    await _userRepository.create(request.id, request.toMap());
  }

  Future<void> update(UserUpdateRequest request) async {
    if (request.file != null) {
      final user = await get(request.id);
      final String downloadUrl;

      if (user.imageUrl != null) {
        downloadUrl = await _storageService.updateImage(
          request.id,
          request.file!,
          user.imageUrl!,
        );
      } else {
        downloadUrl = await _storageService.putImage(
          request.id,
          request.file!,
        );
      }

      request.imageUrl = downloadUrl;
    }

    await _userRepository.update(request.id, request.toMap());
  }

  Future<UserModel> get(String id) async {
    final snapshot = await _userRepository.getUser(id);

    return UserModel.fromMap(snapshot.data()!);
  }
}
