import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';
//import 'package:http/http.dart' as http;

class AnnouncementRepository {
  Future<bool> addAnnouncement(AnnouncementModel announcementModel) {
    return Future(() => true);
  }

  Future<bool> updateAnnouncement(AnnouncementModel announcementModel) {
    return Future(() => true);
  }

  Future<bool> deleteAnnouncement(String id) {
    return Future(() => true);
  }

  Future<AnnouncementModel?> getAnnouncement(String id) {
    return Future(
      () => announcementModelData.firstWhere((element) => element.id == id),
    );
  }

  Future<List<AnnouncementModel>> getAllAnnouncements() {
    return Future(
      () => announcementModelData,
    );
  }
}
