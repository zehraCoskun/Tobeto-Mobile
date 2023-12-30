import 'package:tobeto_mobil/models/announcement_model.dart';

abstract class AnnouncementState {}

class AnnouncementInitial extends AnnouncementState {}

class AnnouncementLoading extends AnnouncementState {}

class AnnouncementLoaded extends AnnouncementState {
  final AnnouncementModel announcementModel;

  AnnouncementLoaded({
    required this.announcementModel,
  });
}

class AnnouncementError extends AnnouncementState {}

class AnnouncementSuccess extends AnnouncementState {}
