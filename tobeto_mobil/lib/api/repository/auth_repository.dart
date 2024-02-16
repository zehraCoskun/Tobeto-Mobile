import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _authentication;

  const AuthRepository._private(this._authentication);

  static final _instance = AuthRepository._private(
    FirebaseAuth.instance,
  );

  factory AuthRepository.instance() {
    return _instance;
  }

  Future<UserCredential> login(String email, String password) async {
    return _authentication.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> register(String email, String password) async {
    return _authentication.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> logout() async {
    await _authentication.signOut();
  }

  Future<void> delete() async {
    await _authentication.currentUser?.delete();
  }

  User? currentUser() {
    return _authentication.currentUser;
  }
}
