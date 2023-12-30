import 'package:tobeto_mobil/models/announcement_model.dart';

abstract class AnnouncementsState {}

class AnnouncementsInitial extends AnnouncementsState {}

class AnnouncementsLoading extends AnnouncementsState {}

class AnnouncementsLoaded extends AnnouncementsState {
  final List<AnnouncementModel> announcementModels;

  AnnouncementsLoaded({
    required this.announcementModels,
  });
}

class AnnouncementsError extends AnnouncementsState {}

class AnnouncementsSuccess extends AnnouncementsState {}
