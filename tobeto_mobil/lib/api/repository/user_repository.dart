import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository {
  final firestore = FirebaseFirestore.instance.collection("users");

  Future<DocumentReference> create(Map<String, dynamic> data) async {
    return await firestore.add(data);
  }

  Future<void> update(String id, Map<String, dynamic> data) async {
    await firestore.doc(id).update(data);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> get(String id) async {
    return await firestore.get().then(
          (value) => value.docs.firstWhere(
            (element) => element.data()["id"] == id,
          ),
        );
  }
}
