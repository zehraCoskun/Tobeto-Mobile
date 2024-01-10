enum CatalogFilterItem {
  category,
  education,
  level,
  subject,
  language,
  educator,
  status;

  @override
  String toString() {
    switch (this) {
      case CatalogFilterItem.category:
        return "Kategori";
      case CatalogFilterItem.education:
        return "Egitimler";
      case CatalogFilterItem.level:
        return "Seviye";
      case CatalogFilterItem.subject:
        return "Konu";
      case CatalogFilterItem.language:
        return "Yazilim Dili";
      case CatalogFilterItem.educator:
        return "Egitmen";
      case CatalogFilterItem.status:
        return "Durum";
    }
  }
}