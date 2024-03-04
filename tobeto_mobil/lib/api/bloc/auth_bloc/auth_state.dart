import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/utils/exception/custom_exception.dart';

@immutable
abstract class AuthState {
  final CustomException? error;

  const AuthState({
    this.error,
  });
}

@immutable
class AuthStateInitial extends AuthState {
  const AuthStateInitial();
}

@immutable
class AuthStateLoading extends AuthState {
  const AuthStateLoading();
}

// LOGIN
@immutable
class AuthStateLoggedIn extends AuthState {
  final User user;

  const AuthStateLoggedIn({
    required this.user,
  });
}

// REGISTER
@immutable
class AuthStateInRegisterView extends AuthState {
  const AuthStateInRegisterView();
}

@immutable
class AuthStateRegistered extends AuthState {
  const AuthStateRegistered();
}

// RECOVERY
@immutable
class AuthStateInRecoverView extends AuthState {
  const AuthStateInRecoverView();
}

@immutable
class AuthStateRecoverLinkSent extends AuthState {
  const AuthStateRecoverLinkSent();
}

// LOGOUT
@immutable
class AuthStateLoggedOut extends AuthState {
  const AuthStateLoggedOut({
    CustomException? error,
  }) : super(error: error);
}

@immutable
class AuthStateNoConnection extends AuthState {
  const AuthStateNoConnection();
}
