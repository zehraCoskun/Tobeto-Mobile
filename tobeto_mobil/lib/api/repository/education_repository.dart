import 'package:cloud_firestore/cloud_firestore.dart';

class EducationRepository {
  final CollectionReference<Map<String, dynamic>> _collection;
  EducationRepository._(this._collection);

  static final _instance = EducationRepository._(FirebaseFirestore.instance.collection("educations"));

  factory EducationRepository.instance() {
    return _instance;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllEducation() async {
    return await _collection.get();
  }
}
