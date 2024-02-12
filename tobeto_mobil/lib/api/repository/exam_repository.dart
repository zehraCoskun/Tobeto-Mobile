import 'package:cloud_firestore/cloud_firestore.dart';

class ExamRepository {
  final CollectionReference<Map<String, dynamic>> _collection;
  ExamRepository._(this._collection);

  static final _instance = ExamRepository._(FirebaseFirestore.instance.collection("exams"));

  factory ExamRepository.instance() {
    return _instance;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllExam() async {
    return await _collection.get();
  }
}
