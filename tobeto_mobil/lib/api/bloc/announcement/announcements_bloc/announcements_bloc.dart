import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement/announcements_bloc/announcements_event.dart';
import 'package:tobeto_mobil/api/bloc/announcement/announcements_bloc/announcements_state.dart';
import 'package:tobeto_mobil/api/repository/announcement_repository.dart';

class AnnouncementsBloc extends Bloc<AnnouncementsEvent, AnnouncementsState> {
  final AnnouncementRepository announcementRepository;

  AnnouncementsBloc({
    required this.announcementRepository,
  }) : super(AnnouncementsInitial()) {
    on<GetAllAnnouncements>(_onGetAll);
  }

  void _onGetAll(
      GetAllAnnouncements event, Emitter<AnnouncementsState> emit) async {
    emit(AnnouncementsLoading());

    final announcementModels =
        await announcementRepository.getAllAnnouncements();

    emit(AnnouncementsLoaded(announcementModels: announcementModels));
  }
}
