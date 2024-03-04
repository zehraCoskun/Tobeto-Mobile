import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';
import 'package:tobeto_mobil/api/business/services/storage_service.dart';
import 'package:tobeto_mobil/api/repository/user_repository.dart';
import 'package:tobeto_mobil/models/user/certificate_model.dart';
import 'package:tobeto_mobil/models/user/user_model.dart';
import 'package:tobeto_mobil/utils/exception/user_exception.dart';

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
    //throw const UserExceptionThereWasAnError();
    await _userRepository
        .create(request.id, request.toMap())
        .onError((error, stackTrace) {
      throw const UserExceptionThereWasAnError();
    });
  }

  Future<void> update(UserUpdateRequest request) async {
    if (request.imageFile != null) {
      request.imageUrl = await _processImageFile(request);
    }

    if (request.certificateFile != null) {
      request.certificates = await _processCertificates(request);
    }

    await _userRepository.update(request.id, request.toMap());
  }

  Future<UserModel> get(String id) async {
    final snapshot = await _userRepository.getUser(id);

    return UserModel.fromMap(snapshot.data()!);
  }

  Future<UserModel> getWithEmail(String email) async {
    final snapshot = await _userRepository.findWithEmail(email);

    if (snapshot.size == 0) {
      throw const UserExceptionNotFound();
    }

    return UserModel.fromMap(snapshot.docs.first.data());
  }

  Future<String> _processImageFile(
    UserUpdateRequest request,
  ) async {
    late String downloadUrl;

    final user = await get(request.id);

    if (user.imageUrl != null) {
      downloadUrl = await _storageService.updateImage(
        request.id,
        request.imageFile!,
        user.imageUrl!,
      );
    } else {
      downloadUrl = await _storageService.putImage(
        request.id,
        request.imageFile!,
      );
    }

    return downloadUrl;
  }

  Future<List<CertificateModel>> _processCertificates(
      UserUpdateRequest request) async {
    List<CertificateModel> certificates = [];

    final user = await get(request.id);

    if (user.certificates != null) {
      certificates.addAll(user.certificates!);
    }

    final ref = await _storageService.putFile(
      request.id,
      request.certificateFile!,
    );

    certificates.add(
      CertificateModel(
        name: ref.name,
        fileUrl: await ref.getDownloadURL(),
      ),
    );

    return certificates;
  }
}
