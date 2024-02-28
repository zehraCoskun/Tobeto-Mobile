import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';
import 'package:tobeto_mobil/api/repository/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final UserService _userService;

  AuthBloc(this._authRepository, this._userService)
      : super(const AuthStateInitial()) {
    on<AuthEventInitialize>((event, emit) => _onInitialize(event, emit));
    on<AuthEventLogIn>((event, emit) => _onLogin(event, emit));
    on<AuthEventRegister>((event, emit) => _onRegister(event, emit));
    on<AuthEventRecover>((event, emit) => _onRecover(event, emit));
    on<AuthEventLogOut>((event, emit) => _onLogout(event, emit));
  }

  Future<void> _onInitialize(
    AuthEventInitialize event,
    Emitter<AuthState> emit,
  ) async {
    if (!await _hasNetwork()) {
      emit(const AuthStateNoConnection());
      return;
    }

    if (event.user != null) {
      emit(AuthStateLoggedIn(user: event.user!));
    } else {
      emit(const AuthStateLoggedOut());
    }
  }

  Future<void> _onLogin(
    AuthEventLogIn event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateLoading());

    try {
      final credential = await _authRepository.login(
        event.email,
        event.password,
      );
      emit(AuthStateInitial(user: credential.user!));
    } on FirebaseAuthException catch (_) {
      emit(const AuthStateLoggedOut());
    }
  }

  Future<void> _onRegister(
    AuthEventRegister event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateLoading());

    try {
      final credential = await _authRepository.register(
        event.email,
        event.password,
      );
      if (credential.user != null) {
        await _userService.create(UserCreateRequest(
          id: credential.user!.uid,
          fullName: event.fullName,
          email: event.email,
        ));
        emit(AuthStateRegistered(user: credential.user!));
      }
    } on FirebaseAuthException catch (_) {
      await _authRepository.login(
        event.email,
        event.password,
      );
      await _authRepository.delete();
      emit(const AuthStateInitial());
    }
  }

  Future<void> _onRecover(
    AuthEventRecover event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateLoading());

    await _authRepository.recover(event.email);
    emit(const AuthStateRecoverLinkSent());
  }

  Future<void> _onLogout(
    AuthEventLogOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateLoading());

    await _authRepository.logout();

    emit(const AuthStateInitial());
  }
}

Future<bool> _hasNetwork() async {
  try {
    final result = await InternetAddress.lookup("google.com");
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  }
}
