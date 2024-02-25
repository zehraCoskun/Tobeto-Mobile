import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_mobil/constants/collection_names.dart';

class CalendarRepository {
  final CollectionReference<Map<String, dynamic>> _collection;

  const CalendarRepository._private(this._collection);

  static final _instance = CalendarRepository._private(
    FirebaseFirestore.instance.collection(Collections.EVENTS),
  );

  factory CalendarRepository.instance() {
    return _instance;
  }

  // void _create(Map<String, dynamic> map) async {
  //   await _collection.add(map);
  // }

  // void _update(String docId, Map<String, dynamic> map) async {
  //   await _collection.doc(docId).update(map);
  // }

  Stream<QuerySnapshot<Map<String, dynamic>>> stream() {
    return _collection.snapshots();
  }
}
