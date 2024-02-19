import 'package:cloud_firestore/cloud_firestore.dart';

class TobetoNewsRepository {
  final CollectionReference<Map<String, dynamic>> _collection;
  TobetoNewsRepository._(this._collection);

  static final _instance = TobetoNewsRepository._(
    FirebaseFirestore.instance.collection("tobeto_news"),
  );

  factory TobetoNewsRepository.instance() {
    return _instance;
  }
  Future<QuerySnapshot<Map<String, dynamic>>> getAllNews() async {
    return await _collection.get();
  }
}
