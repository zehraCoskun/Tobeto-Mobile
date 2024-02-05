import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileRepository {
  final CollectionReference<Map<String, dynamic>> _collection;

  const ProfileRepository._(this._collection);

  static final _instance = ProfileRepository._(
    FirebaseFirestore.instance.collection("profile"),
  );

  factory ProfileRepository.instance() {
    return _instance;
  }

  Future<void> create(String docId, Map<String, dynamic> data) async {
    await _collection.doc(docId).set(data);
  }

  Future<void> update(String docId, Map<String, dynamic> data) async {
    await _collection.doc(docId).update(data);
  }
}
