import 'package:bloc/bloc.dart';
import 'package:tobeto_mobil/api/bloc/announcement/announcement_bloc/announcement_event.dart';
import 'package:tobeto_mobil/api/bloc/announcement/announcement_bloc/announcement_state.dart';
import 'package:tobeto_mobil/api/repository/announcement_repository.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final AnnouncementRepository announcementRepository;

  AnnouncementBloc({required this.announcementRepository})
      : super(AnnouncementInitial()) {
    on<AddAnnouncement>(_onAdd);
    on<UpdateAnnouncement>(_onUpdate);
    on<DeleteAnnouncement>(_onDelete);
    on<GetAnnouncement>(_onGet);
  }

  void _onAdd(AddAnnouncement event, Emitter<AnnouncementState> emit) async {
    emit(AnnouncementLoading());

    final response = await announcementRepository.addAnnouncement(
      event.announcementModel,
    );

    if (response) {
      emit(AnnouncementSuccess());
    } else {
      emit(AnnouncementError());
    }
  }

  void _onUpdate(
      UpdateAnnouncement event, Emitter<AnnouncementState> emit) async {
    emit(AnnouncementLoading());

    final response = await announcementRepository.updateAnnouncement(
      event.announcementModel,
    );

    if (response) {
      emit(AnnouncementSuccess());
    } else {
      emit(AnnouncementError());
    }
  }

  void _onDelete(
      DeleteAnnouncement event, Emitter<AnnouncementState> emit) async {
    emit(AnnouncementLoading());

    final response = await announcementRepository.deleteAnnouncement(
      event.id,
    );

    if (response) {
      emit(AnnouncementSuccess());
    } else {
      emit(AnnouncementError());
    }
  }

  void _onGet(GetAnnouncement event, Emitter<AnnouncementState> emit) async {
    emit(AnnouncementLoading());

    final announcementModel = await announcementRepository.getAnnouncement(
      event.id,
    );

    if (announcementModel != null) {
      emit(AnnouncementLoaded(announcementModel: announcementModel));
    } else {
      emit(AnnouncementError());
    }
  }
}
