import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _authentication;

  const AuthRepository._(this._authentication);

  static final _instance = AuthRepository._(FirebaseAuth.instance);

  factory AuthRepository.instance() {
    return _instance;
  }

  Future<UserCredential> login(String email, String password) async {
    return await _authentication.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<UserCredential> register(String email, String password) async {
    return await _authentication.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> logOut() async {
    await _authentication.signOut();
  }

  Future<void> delete() async {
    await _authentication.currentUser?.delete();
  }

  Future<User?> currentUser() async {
    return _authentication.currentUser;
  }
}
