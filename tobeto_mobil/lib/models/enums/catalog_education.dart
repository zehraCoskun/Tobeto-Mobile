import 'package:tobeto_mobil/models/catalog/catalog_filter_option.dart';

enum CatalogEducation implements CatalogFilterOption {
  all,
  softskill,
  digital,
  pro;

  @override
  String get title {
    return name;
  }

  @override
  String toString() {
    switch (this) {
      case CatalogEducation.all:
        return "Tüm Eğitimler";
      case CatalogEducation.softskill:
        return "Softskill Egitimleri";
      case CatalogEducation.digital:
        return "Dijital Gelişim";
      case CatalogEducation.pro:
        return "Profesyonel Gelişim";
    }
  }
}
