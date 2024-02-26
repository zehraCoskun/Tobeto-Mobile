import 'package:cloud_firestore/cloud_firestore.dart';

class CatalogRepository {
  final CollectionReference<Map<String, dynamic>> _collection;
  CatalogRepository._(this._collection);

  static final _instance = CatalogRepository._(FirebaseFirestore.instance.collection("catalogs"));

  factory CatalogRepository.instance() {
    return _instance;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllCatalog() async {
    return await _collection.get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getFilteredCatalog(Filter filter) async {
    return await _collection.where(filter).get();
  }
}