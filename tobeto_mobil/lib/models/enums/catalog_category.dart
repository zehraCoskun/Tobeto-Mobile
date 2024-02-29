import 'package:tobeto_mobil/models/catalog/catalog_filter_option.dart';

enum CatalogCategory implements CatalogFilterOption {
  all,
  paid,
  free;

  @override
  String get title {
    return name;
  }

  @override
  String toString() {
    switch (this) {
      case CatalogCategory.all:
        return "Tüm Eğitimler";
      case CatalogCategory.paid:
        return "Ücretli Eğitimler";
      case CatalogCategory.free:
        return "Ücretsiz Eğitimler";
    }
  }
}
