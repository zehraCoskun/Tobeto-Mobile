import 'package:cloud_firestore/cloud_firestore.dart';

class CalendarRepository {
  final CollectionReference<Map<String, dynamic>> _collection;

  const CalendarRepository._private(this._collection);

  static final _instance = CalendarRepository._private(
    FirebaseFirestore.instance.collection("calendars"),
  );

  factory CalendarRepository.instance() {
    return _instance;
  }

  Future<void> update(String docId, Map<String, dynamic> data) async {
    await _collection.doc(docId).update(data);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> findOne(String docId) async {
    return await _collection.doc(docId).get();
  }
}
