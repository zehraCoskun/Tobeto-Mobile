import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/api/business/services/auth_service.dart';
import 'package:tobeto_mobil/utils/exception/custom_exception.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;

  AuthBloc(this._authService) : super(const AuthStateInitial()) {
    on<AuthEventInitialize>(_onInitialize);
    on<AuthEventLogIn>(_onLogin);
    on<AuthEventToRegisterView>(_onToRegisterView);
    on<AuthEventRegister>(_onRegister);
    on<AuthEventToRecoverView>(_onToRecoverView);
    on<AuthEventRecover>(_onRecover);
    on<AuthEventLogOut>(_onLogout);
  }

  Future<void> _onInitialize(
    AuthEventInitialize event,
    Emitter<AuthState> emit,
  ) async {
    if (!await _hasNetwork()) {
      emit(const AuthStateNoConnection());
      return;
    }

    final user = _authService.currentUser();
    if (user != null) {
      emit(AuthStateLoggedIn(user: user));
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
      await _authService.login(
        event.email,
        event.password,
      );
      emit(const AuthStateInitial());
    } on CustomException catch (error) {
      emit(AuthStateLoggedOut(
        error: error,
      ));
    }
  }

  Future<void> _onToRegisterView(
      AuthEventToRegisterView event, Emitter<AuthState> emit) async {
    emit(const AuthStateInRegisterView());
  }

  Future<void> _onRegister(
    AuthEventRegister event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateLoading());
    
    try {
      await _authService.register(event.request);
      await _authService.logout();
      emit(const AuthStateRegistered());
    } on CustomException catch (error) {
      emit(AuthStateLoggedOut(error: error));
    }
  }

  Future<void> _onToRecoverView(
      AuthEventToRecoverView event, Emitter<AuthState> emit) async {
    emit(const AuthStateInRecoverView());
  }

  Future<void> _onRecover(
    AuthEventRecover event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateLoading());

    try {
      await _authService.recover(event.email);
      emit(const AuthStateRecoverLinkSent());
    } on CustomException catch (error) {
      emit(AuthStateLoggedOut(error: error));
    }
  }

  Future<void> _onLogout(
    AuthEventLogOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateLoading());

    try {
      await _authService.logout();
      emit(const AuthStateInitial());
    } on CustomException catch (error) {
      emit(AuthStateLoggedOut(error: error));
    }
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
