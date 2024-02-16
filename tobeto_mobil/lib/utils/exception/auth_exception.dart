import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthException implements Exception {
  final String? message;

  const AuthException(
    this.message,
  );
}

class UserNotFoundException extends AuthException {
  const UserNotFoundException([
    String? message,
  ]) : super(message);
}

class UserRegisterFailed extends AuthException {
  const UserRegisterFailed([
    String? message,
  ]) : super(message);
}
