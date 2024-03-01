import 'package:tobeto_mobil/models/catalog/catalog_filter_option.dart';

enum CatalogLevel implements CatalogFilterOption {
  all,
  beginner,
  intermediate,
  advanced;

  @override
  String get title {
    return name;
  }

  @override
  String get displayName {
    switch (this) {
      case CatalogLevel.all:
        return "Tüm Seviyeler";
      case CatalogLevel.beginner:
        return "Başlangıç";
      case CatalogLevel.intermediate:
        return "Orta";
      case CatalogLevel.advanced:
        return "İleri";
    }
  }
}
