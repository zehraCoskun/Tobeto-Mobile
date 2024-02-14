import 'package:tobeto_mobil/api/repository/catalog_repository.dart';
import 'package:tobeto_mobil/models/firebase_models/catalog_model.dart';

class CatalogService {
  final CatalogRepository _catalogRepository;
  const CatalogService(this._catalogRepository);

  Future<List<CatalogModel>> getCategoryEducation() async {
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
}
