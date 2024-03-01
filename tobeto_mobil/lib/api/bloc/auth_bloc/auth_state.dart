import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/utils/exception/auth_error.dart';

@immutable
abstract class AuthState {
  final AuthError? authError;

  const AuthState({
    this.authError,
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
class AuthStateRegistered extends AuthState {
  final User user;

  const AuthStateRegistered({
    required this.user,
  });
}

// RECOVERY
@immutable
class AuthStateRecoverLinkSent extends AuthState {
  const AuthStateRecoverLinkSent();
}

// LOGOUT
@immutable
class AuthStateLoggedOut extends AuthState {
  const AuthStateLoggedOut({
    AuthError? authError,
  }) : super(authError: authError);
}

@immutable
class AuthStateNoConnection extends AuthState {
  const AuthStateNoConnection();
}
