import 'package:cloud_firestore/cloud_firestore.dart';

class ReviewRepository {
  final CollectionReference<Map<String, dynamic>> _collection;
  ReviewRepository._(this._collection);

  static final _instance = ReviewRepository._(FirebaseFirestore.instance.collection("reviews"));

  factory ReviewRepository.intance() {
    return _instance;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllReview() async {
    return await _collection.get();
  }
}
