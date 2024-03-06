import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_mobil/api/repository/catalog_repository.dart';
import 'package:tobeto_mobil/models/catalog/sort_by.dart';
import 'package:tobeto_mobil/models/catalog/catalog_model.dart';

class CatalogService {
  final CatalogRepository _catalogRepository;

  const CatalogService._private(this._catalogRepository);

  static final _instance = CatalogService._private(
    CatalogRepository.instance(),
  );

  factory CatalogService.instance() {
    return _instance;
  }

  Future<List<CatalogModel>> getCatalog(SortBy? sortBy) async {
    final querSnapshot = await _catalogRepository.getAllCatalog();
    final List<CatalogModel> catalogList = [];

    for (var catalogDoc in querSnapshot.docs) {
      if (catalogDoc.exists) {
        final catalogData = catalogDoc.data();
        catalogList.add(CatalogModel.fromMap(catalogData));
      }
    }

    return catalogList..sortBy(sortBy);
  }

  Future<List<CatalogModel>> getFilteredCatalog(
      SortBy? sortBy, Filter filter) async {
    final querySnapshot = await _catalogRepository.getFilteredCatalog(filter);

    final catalogs = querySnapshot.docs
        .map((e) => CatalogModel.fromMap(e.data()))
        .toList()
        ..sortBy(sortBy);

    return catalogs;
  }
}
