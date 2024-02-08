import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UserRepository {
  final CollectionReference<Map<String, dynamic>> _collection;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  UserRepository._(this._collection);

  static final _instance = UserRepository._(
    FirebaseFirestore.instance.collection("users"),
  );

  factory UserRepository.instance() {
    return _instance;
  }

  Future<void> create(String docId, Map<String, dynamic> data) async {
    await _collection.doc(docId).set(data);
  }

  Future<void> update(String docId, Map<String, dynamic> data, {File? file}) async {
    if (file != null) {
      final url = await updateImage(docId, file);
      data.addEntries([MapEntry("profile_image", url)]);
    }
    await _collection.doc(docId).update(data);
  }

  Future<String> updateImage(String docId, File file) async {
    final task = await _storage.ref().child("images").child("$docId.jpg").putFile(file);
    return await task.ref.getDownloadURL();
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> findWithDocId(String docId) async {
    return await _collection.get().then(
          (value) => value.docs.firstWhere((element) => element.id == docId),
        );
  }
}
