import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/api/business/requests/auth_requests/auth_register_request.dart';

@immutable
abstract class AuthEvent {}

@immutable
class AuthEventInitialize implements AuthEvent {}

@immutable
class AuthEventLogin implements AuthEvent {
  final String email;
  final String password;

  const AuthEventLogin({
    required this.email,
    required this.password,
  });
}

@immutable
class AuthEventRegister implements AuthEvent {
  final AuthRegisterRequest request;

  const AuthEventRegister({
    required this.request,
  });
}

@immutable
class AuthEventLogOut implements AuthEvent {
  const AuthEventLogOut();
}