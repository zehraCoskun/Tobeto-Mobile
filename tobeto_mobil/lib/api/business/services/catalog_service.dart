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
    return catalogList;
  }

  Future<List<CatalogModel>> getFilteredCatalog(SortBy? sortBy, Filter filter) async {
    final querySnapshot = await _catalogRepository.getFilteredCatalog(filter);

    final catalogs = querySnapshot.docs
        .map((e) => CatalogModel.fromMap(e.data()))
        .toList();

    if (sortBy != null) {
      _sort(sortBy, catalogs);
    }

    return catalogs;
  }
}

void _sort(SortBy sort, List<CatalogModel> catalogs) {
  switch (sort.field) {
    case CatalogFields.title:
      catalogs.sort((a, b) => a.title.compareTo(b.title));
    case CatalogFields.totalDuration:
      catalogs.sort((a, b) => a.totalDuration.compareTo(b.totalDuration));
    case CatalogFields.startDate:
      catalogs.sort((a, b) => a.startDate.compareTo(b.startDate));
    case CatalogFields.language:
      catalogs.sort((a, b) => a.language.compareTo(b.language));
    case CatalogFields.category:
      catalogs.sort((a, b) => a.category.compareTo(b.category));
    case CatalogFields.education:
      catalogs.sort((a, b) => a.education.compareTo(b.education));
    case CatalogFields.level:
      catalogs.sort((a, b) => a.level.compareTo(b.level));
    case CatalogFields.trainer:
      catalogs.sort((a, b) => a.trainer.compareTo(b.level));
  }
}
