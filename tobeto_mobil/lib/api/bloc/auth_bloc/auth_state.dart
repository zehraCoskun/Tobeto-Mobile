import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthState {
  final bool isLoading;

  const AuthState({
    required this.isLoading,
  });
}

@immutable
class AuthStateLogin extends AuthState {
  const AuthStateLogin({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class AuthStateRegister extends AuthState {
  const AuthStateRegister({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

class AuthStateLogOut extends AuthState {
  const AuthStateLogOut({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}
