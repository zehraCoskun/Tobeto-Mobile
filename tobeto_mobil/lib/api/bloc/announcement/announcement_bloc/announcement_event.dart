import 'package:tobeto_mobil/models/announcement_model.dart';

abstract class AnnouncementEvent {}

class AddAnnouncement extends AnnouncementEvent {
  final AnnouncementModel announcementModel;

  AddAnnouncement({
    required this.announcementModel,
  });
}

class UpdateAnnouncement extends AnnouncementEvent {
  final AnnouncementModel announcementModel;

  UpdateAnnouncement({
    required this.announcementModel,
  });
}

class DeleteAnnouncement extends AnnouncementEvent {
  final String id;

  DeleteAnnouncement({
    required this.id,
  });
}

class GetAnnouncement extends AnnouncementEvent {
  final String id;

  GetAnnouncement({
    required this.id,
  });
}