import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';

class UserRepository {
  final firestore =
      FirebaseFirestore.instance.collection("users").withConverter(
            fromFirestore: (snapshot, options) =>
                UserModel.fromMap(snapshot.data()!),
            toFirestore: (value, options) => value.toMap(),
          );

  Future<void> create(UserModel user) async {
    await firestore.add(user);
  }

  Future<void> update(String id, Map<String, dynamic> data) async {
    await firestore.doc(id).update(data);
  }

  Future<DocumentSnapshot<UserModel>> get(String id) async {
    return await firestore.get().then(
          (value) => value.docs.firstWhere(
            (element) => element.data().id == id,
          ),
        );
  }
}
