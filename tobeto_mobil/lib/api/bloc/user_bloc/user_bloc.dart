import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_event.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserService _userService;

  UserBloc(this._userService) : super(const UserStateInitial()) {
    on<UserEventUpdate>((event, emit) => _onUpdate(event, emit));
    on<UserEventFetch>((event, emit) => _onFetch(event, emit));
  }

  Future<void> _onUpdate(
    UserEventUpdate event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserStateLoading());

    await _userService.update(event.request);

    emit(const UserStateUpdated());
  }

  Future<void> _onFetch(UserEventFetch event, Emitter<UserState> emit) async {
    emit(const UserStateLoading());

    final user = await _userService.get(event.id);

    emit(UserStateFetched(userModel: user));
  }
}
