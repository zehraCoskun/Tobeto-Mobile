import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/profile_bloc/profile_event.dart';
import 'package:tobeto_mobil/api/bloc/profile_bloc/profile_state.dart';
import 'package:tobeto_mobil/api/business/services/profile_service.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileService _profileService;

  ProfileBloc(this._profileService) : super(const ProfileStateInitial()) {
    on<ProfileEventCreate>(
      (event, emit) => _onCreate(event, emit),
    );
  }

  Future<void> _onCreate(ProfileEventCreate event, Emitter<ProfileState> emit) async {
    emit(const ProfileStateCreating(isLoading: true));
    await _profileService.create(event.docId, event.request);
    emit(const ProfileStateCreating());
  }
}
