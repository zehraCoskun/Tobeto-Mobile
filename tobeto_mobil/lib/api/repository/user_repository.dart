import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository {
  final CollectionReference<Map<String, dynamic>> _collection;

  const UserRepository._(this._collection);

  static final _instance = UserRepository._(
    FirebaseFirestore.instance.collection("users"),
  );

  factory UserRepository.instance() {
    return _instance;
  }

  Future<void> create(String docId, Map<String, dynamic> data) async {
    await _collection.doc(docId).set(data);
  }

  Future<void> update(String docId, Map<String, dynamic> data) async {
    await _collection.doc(docId).update(data);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> findWithDocId(
      String docId) async {
    return await _collection.get().then(
          (value) => value.docs.firstWhere((element) => element.id == docId),
        );
  }
}
