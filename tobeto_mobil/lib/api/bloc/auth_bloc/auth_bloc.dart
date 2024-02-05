import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/api/business/services/auth_service.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;

  AuthBloc(this._authService) : super(const AuthStateLogOut()) {
    on<AuthEventInitialize>((event, emit) => _onInitialize(event, emit));
    on<AuthEventLogin>((event, emit) => _onLogin(event, emit));
    on<AuthEventRegister>((event, emit) => _onRegister(event, emit));
    on<AuthEventLogOut>((event, emit) => _onLogOut(event, emit));
  }

  Future<void> _onInitialize(
    AuthEventInitialize event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _authService.getCurrentUser();

    if (result != null) {
      emit(const AuthStateLogin());
    } else {
      emit(const AuthStateLogOut());
    }
  }

  Future<void> _onLogin(AuthEventLogin event, Emitter<AuthState> emit) async {
    emit(const AuthStateLogin(isLoading: true));

    await _authService.login(event.email, event.password);

    emit(const AuthStateLogin());
  }

  Future<void> _onRegister(
    AuthEventRegister event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateRegister(isLoading: true));

    await _authService.register(event.request);

    emit(const AuthStateRegister());
  }

  Future<void> _onLogOut(AuthEventLogOut event, Emitter<AuthState> emit) async {
    emit(const AuthStateLogOut(isLoading: true));

    await _authService.logOut();

    emit(const AuthStateLogOut());
  }
}
