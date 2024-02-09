import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc.dart/announcement_event.dart';
import 'package:tobeto_mobil/api/bloc/announcement_bloc.dart/announcement_state.dart';
import 'package:tobeto_mobil/api/business/services/announcement_service.dart';
import 'package:tobeto_mobil/models/firebase_models/announcement_model.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final AnnouncementService _announcementService;
  AnnouncementBloc(this._announcementService) : super(const AnnouncementStateInitial()) {
    on<AnnouncementEventFetch>((event, emit) => _onFetchAnnouncements(event, emit));
  }

  Future<void> _onFetchAnnouncements(AnnouncementEventFetch event, Emitter<AnnouncementState> emit) async {
    emit(const AnnouncementStateLoading(isLoading: true));
    try {
      final List<AnnouncementModel> announcements = await _announcementService.getAllAnnouncement();
      emit(AnnouncementStateLoaded(announcements));
    } catch (e) {
      emit(AnnouncementStateError(errorMessage: e.toString()));
    }
  }
}
