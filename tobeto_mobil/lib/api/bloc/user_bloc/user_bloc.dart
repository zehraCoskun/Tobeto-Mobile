import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_event.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserService _userService;

  UserBloc(this._userService) : super(const UserStateInitial()) {
    on<UserEventCreate>((event, emit) => _onCreate(event, emit));
    on<UserEventUpdate>((event, emit) => _onUpdate(event, emit));
    on<UserEventFetch>((event, emit) => _onFetchUser(event, emit));
  }

  Future<void> _onCreate(UserEventCreate event, Emitter<UserState> emit) async {
    emit(const UserStateLoading(isLoading: true));

    try {
      await _userService.create(event.docId, event.request);
      emit(const UserStateCreating());
    } catch (e) {
      emit(UserStateError(errorMessage: e.toString()));
    }
  }

  Future<void> _onUpdate(UserEventUpdate event, Emitter<UserState> emit) async {
    emit(const UserStateLoading(isLoading: true));

    try {
      await _userService.update(event.docId, event.request);
      emit(const UserStateUpdating());
    } catch (e) {
      emit(UserStateError(errorMessage: e.toString()));
    }
  }

  Future<void> _onFetchUser(UserEventFetch event, Emitter<UserState> emit) async {
    emit(const UserStateLoading(isLoading: true));
    try {
      final user = await _userService.fetchUserData(event.docId);
      emit(UserStateFetching(user: user));
    } catch (e) {
      emit(UserStateError(errorMessage: e.toString()));
    }
  }
}
