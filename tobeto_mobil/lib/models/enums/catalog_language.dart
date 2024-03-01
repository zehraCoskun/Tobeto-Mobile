import 'package:tobeto_mobil/models/catalog/catalog_filter_option.dart';

enum CatalogLanguage implements CatalogFilterOption {
  all,
  other,
  flutter,
  swift,
  javascript,
  java,
  csharp,
  sql;

  @override
  String get title {
    return name;
  }

  @override
  String get displayName {
    switch(this) {
      case CatalogLanguage.all:
        return "Tüm Diller";
      case CatalogLanguage.other:
        return "Diger";
      case CatalogLanguage.flutter:
        return "Flutter";
      case CatalogLanguage.swift:
        return "Swift";
      case CatalogLanguage.javascript:
        return "JavaScript";
      case CatalogLanguage.java:
        return "Java";
      case CatalogLanguage.csharp:
        return "C#";
      case CatalogLanguage.sql:
        return "SQL";
    }
  }
}