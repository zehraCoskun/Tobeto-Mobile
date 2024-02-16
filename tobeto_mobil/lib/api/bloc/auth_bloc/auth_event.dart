import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthEvent {}

@immutable
class AuthEventInitialize implements AuthEvent {
  const AuthEventInitialize();
}

// LOGIN
@immutable
class AuthEventLogIn implements AuthEvent {
  final String email;
  final String password;

  const AuthEventLogIn({
    required this.email,
    required this.password,
  });
}

// REGISTER
@immutable
class AuthEventRegister implements AuthEvent {
  final String fullName;
  final String email;
  final String password;

  const AuthEventRegister({
    required this.fullName,
    required this.email,
    required this.password,
  });
}

// RECOVER
@immutable
class AuthEventRecover implements AuthEvent {
  final String email;

  const AuthEventRecover({
    required this.email,
  });
}

// LOGOUT
@immutable
class AuthEventLogOut implements AuthEvent {
  const AuthEventLogOut();
}
