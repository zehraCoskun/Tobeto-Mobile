import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/api/business/requests/auth_requests/auth_register_request.dart';

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
class AuthEventToRegisterView implements AuthEvent {
  const AuthEventToRegisterView();
}

@immutable
class AuthEventRegister implements AuthEvent {
  final AuthRegisterRequest request;

  const AuthEventRegister({
    required this.request,
  });
}

// RECOVER
@immutable
class AuthEventToRecoverView implements AuthEvent {
  const AuthEventToRecoverView();
}

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
