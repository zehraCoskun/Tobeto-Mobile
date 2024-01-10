enum CatalogCategoryItem {
  category,
  educations,
  level,
  topic,
  language,
  trainer,
  situation;

  @override
  String toString() {
    switch (this) {
      case CatalogCategoryItem.category:
        return "Kategori";
      case CatalogCategoryItem.educations:
        return "Eğitimler";
      case CatalogCategoryItem.level:
        return "Seviye";
      case CatalogCategoryItem.topic:
        return "Konu";
      case CatalogCategoryItem.language:
        return "Yazılım Dili";
      case CatalogCategoryItem.trainer:
        return "Eğitmen";
      case CatalogCategoryItem.situation:
        return "Durum";
    }
  }
}

