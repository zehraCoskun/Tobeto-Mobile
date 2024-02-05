import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_event.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_state.dart';
import 'package:tobeto_mobil/api/business/services/user_service.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserService _userService;

  UserBloc(this._userService) : super(const UserStateInitial()) {
    on<UserEventCreate>((event, emit) => _onCreate(event, emit));
  }

  Future<void> _onCreate(UserEventCreate event, Emitter<UserState> emit) async {
    emit(const UserStateCreating(isLoading: true));

    await _userService.create(event.docId, event.request);

    emit(const UserStateCreating());
  }
}
