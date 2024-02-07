import 'package:firebase_auth/firebase_auth.dart';
import 'package:tobeto_mobil/api/business/requests/auth_requests/auth_register_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';
import 'package:tobeto_mobil/api/repository/auth_repository.dart';

class AuthService {
  final AuthRepository _authRepository;
  final UserService _userService;

  const AuthService(
    this._authRepository,
    this._userService,
  );

  Future<void> login(String email, String password) async {
    //throw exception if there is any problem

    final result = await _authRepository.login(email, password);

    if (result.user == null) {
      //throw here
    }
  }

  Future<UserCredential?> register(AuthRegisterRequest request) async {
    final result = await _authRepository.register(
      request.email,
      request.password,
    );

    if (result.user != null) {
      await _userService
          .create(
            result.user!.uid,
            UserCreateRequest(
              fullName: request.fullName,
              email: request.email,
            ),
          )
          .onError(
            (error, stackTrace) => deleteUser(request.email, request.password),
          );
      return result;
    }

    return null;
  }

  Future<void> logOut() async {
    await _authRepository.logOut();
  }

  Future<void> deleteUser(String email, String password) async {
    await _authRepository.login(email, password);

    await _authRepository.delete();
  }

  Future<User?> getCurrentUser() async {
    return _authRepository.currentUser();
  }
}
