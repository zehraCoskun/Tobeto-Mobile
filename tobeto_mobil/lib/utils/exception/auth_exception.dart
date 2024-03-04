import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/utils/exception/custom_exception.dart';

const Map<String, AuthException> authExceptionMapping = {
  'user-not-found': AuthExceptionUserNotFound(),
  'weak-password': AuthExceptionWeakPassword(),
  'invalid-email': AuthExceptionInvalidEmail(),
  'operation-not-allowed': AuthExceptionOperationNotAllowed(),
  'email-already-in-use': AuthExceptionEmailAlreadyInUse(),
  'requires-recent-login': AuthExceptionRequiresRecentLogin(),
  'no-current-user': AuthExceptionNoCurrentUser(),
};

@immutable
abstract class AuthException extends CustomException {
  const AuthException({
    required String dialogText,
    required String dialogTitle,
  }) : super(
          dialogText: dialogText,
          dialogTitle: dialogTitle,
        );

  factory AuthException.from(FirebaseAuthException exception) {
    return authExceptionMapping[exception.code.toLowerCase().trim()] ??
        const AuthExceptionUnknown();
  }
}

@immutable
class AuthExceptionUnknown extends AuthException {
  const AuthExceptionUnknown()
      : super(
          dialogTitle: 'Authentication error',
          dialogText: 'Unknown authentication error',
        );
}

// auth/no-current-user

@immutable
class AuthExceptionNoCurrentUser extends AuthException {
  const AuthExceptionNoCurrentUser()
      : super(
          dialogTitle: 'No current user!',
          dialogText: 'No current user with this information was found!',
        );
}

// auth/requires-recent-login

@immutable
class AuthExceptionRequiresRecentLogin extends AuthException {
  const AuthExceptionRequiresRecentLogin()
      : super(
          dialogTitle: 'Requires recent login',
          dialogText:
              'You need to log out and log back in again in order to perform this operation',
        );
}

// auth/operation-not-allowed

@immutable
class AuthExceptionOperationNotAllowed extends AuthException {
  const AuthExceptionOperationNotAllowed()
      : super(
          dialogTitle: 'Operation not allowed',
          dialogText: 'You cannot register using this method at this moment!',
        );
}

// auth/user-not-found

@immutable
class AuthExceptionUserNotFound extends AuthException {
  const AuthExceptionUserNotFound()
      : super(
          dialogTitle: 'User not found',
          dialogText: 'The given user was not found on the server!',
        );
}

// auth/weak-password

@immutable
class AuthExceptionWeakPassword extends AuthException {
  const AuthExceptionWeakPassword()
      : super(
          dialogTitle: 'Weak password',
          dialogText:
              'Please choose a stronger password consisting of more characters!',
        );
}

// auth/invalid-email

@immutable
class AuthExceptionInvalidEmail extends AuthException {
  const AuthExceptionInvalidEmail()
      : super(
          dialogTitle: 'Invalid Email',
          dialogText: 'Please double check your email and try again!',
        );
}

// auth/email-already-in-use

@immutable
class AuthExceptionEmailAlreadyInUse extends AuthException {
  const AuthExceptionEmailAlreadyInUse()
      : super(
          dialogTitle: 'Email already in use',
          dialogText: 'Please choose another email to register with!',
        );
}
