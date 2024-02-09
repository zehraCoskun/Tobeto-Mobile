import 'package:cloud_firestore/cloud_firestore.dart';

class AnnouncementRepository {
  final CollectionReference<Map<String, dynamic>> _collection;
  AnnouncementRepository._(this._collection);

  static final _instance = AnnouncementRepository._(
    FirebaseFirestore.instance.collection("announcements"),
  );

  factory AnnouncementRepository.instance() {
    return _instance;
  }
  Future<QuerySnapshot<Map<String, dynamic>>> getAllAnnouncement() async {
    return await _collection.get();
  }
}
