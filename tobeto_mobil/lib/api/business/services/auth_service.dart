import 'package:firebase_auth/firebase_auth.dart';
import 'package:tobeto_mobil/api/business/requests/auth_requests/auth_register_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';
import 'package:tobeto_mobil/api/repository/auth_repository.dart';
import 'package:tobeto_mobil/utils/exception/auth_exception.dart';

class AuthService {
  final AuthRepository _authRepository;
  final UserService _userService;

  const AuthService._private(
    this._authRepository,
    this._userService,
  );

  static final _instance = AuthService._private(
    AuthRepository.instance(),
    UserService.instance(),
  );

  factory AuthService.instance() {
    return _instance;
  }

  Future<void> login(String email, String password) async {
    await _authRepository.login(email, password).onError((error, _) {
      throw AuthException.from(error as FirebaseAuthException);
    });
  }

  Future<void> register(AuthRegisterRequest request) async {
    final credential =
        await _authRepository.register(request.email, request.password).onError(
      (error, _) {
        throw AuthException.from(error as FirebaseAuthException);
      },
    );

    await _userService.create(UserCreateRequest(
      id: credential.user!.uid,
      fullName: request.fullName,
      email: request.email,
    ));
  }

  Future<void> recover(String email) async {
    await _userService.getWithEmail(email);
    await _authRepository.recover(email).onError((error, _) {
      throw AuthException.from(error as FirebaseAuthException);
    });
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }

  Future<void> delete() async {
    await _authRepository.delete();
  }

  User? currentUser() {
    return _authRepository.currentUser();
  }
}
