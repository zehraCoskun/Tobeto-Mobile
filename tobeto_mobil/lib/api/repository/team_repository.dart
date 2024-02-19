import 'package:cloud_firestore/cloud_firestore.dart';

class TeamRepository {
  final CollectionReference<Map<String, dynamic>> _collection;
  TeamRepository._(this._collection);

  static final _instance = TeamRepository._(FirebaseFirestore.instance.collection("teams"));

  factory TeamRepository.instance() {
    return _instance;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllTeam() async{
    return await _collection.get();
  }
}
