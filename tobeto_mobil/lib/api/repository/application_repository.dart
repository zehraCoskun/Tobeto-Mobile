import 'package:cloud_firestore/cloud_firestore.dart';

class ApplicationRepository {
  final CollectionReference<Map<String, dynamic>> _collection;
  ApplicationRepository._(this._collection);

  static final _instance = ApplicationRepository._(FirebaseFirestore.instance.collection("applications"));

  factory ApplicationRepository.instance() {
    return _instance;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllApplication() async{
    return await _collection.get();
  }
}
