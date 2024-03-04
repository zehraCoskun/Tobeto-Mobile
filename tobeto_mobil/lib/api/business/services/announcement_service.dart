import 'package:tobeto_mobil/api/repository/announcement_repository.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';

class AnnouncementService {
  final AnnouncementRepository _announcementRepository;
  const AnnouncementService(this._announcementRepository);

  Future<List<AnnouncementModel>> getAllAnnouncement() async {
    final quertSnapshot = await _announcementRepository.getAllAnnouncement();
    final List<AnnouncementModel> announcementList = [];

    for (var announcementDoc in quertSnapshot.docs) {
      if (announcementDoc.exists) {
        final announcementData = announcementDoc.data();
        announcementList.add(AnnouncementModel.fromMap(announcementData));
      }
    }
    announcementList.sort((a, b) => b.date.compareTo(a.date));
    return announcementList;
  }
}
