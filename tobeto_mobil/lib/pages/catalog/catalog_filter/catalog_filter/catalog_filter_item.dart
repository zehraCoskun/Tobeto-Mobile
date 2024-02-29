import 'package:tobeto_mobil/models/catalog/catalog_filter_option.dart';
import 'package:tobeto_mobil/models/enums/catalog_category.dart';
import 'package:tobeto_mobil/models/enums/catalog_education.dart';
import 'package:tobeto_mobil/models/enums/catalog_language.dart';
import 'package:tobeto_mobil/models/enums/catalog_level.dart';

enum CatalogFilterItem {
  category,
  education,
  level,
  language;

  @override
  String toString() {
    switch (this) {
      case CatalogFilterItem.category:
        return "Kategori";
      case CatalogFilterItem.education:
        return "Eğitimler";
      case CatalogFilterItem.level:
        return "Seviye";
      case CatalogFilterItem.language:
        return "Yazılım Dili";
    }
  }

  List<CatalogFilterOption> toList() {
    switch (this) {
      case CatalogFilterItem.category:
        return CatalogCategory.values;
      case CatalogFilterItem.education:
        return CatalogEducation.values;
      case CatalogFilterItem.level:
        return CatalogLevel.values;
      case CatalogFilterItem.language:
        return CatalogLanguage.values;
    }
  }
}
