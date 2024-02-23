enum CatalogFilterItem {
  category,
  education,
  level,
  language,
  educator;

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
      case CatalogFilterItem.educator:
        return "Eğitmen";
    }
  }

  List<String> toList() {
    switch (this) {
      case CatalogFilterItem.category:
        return [
          "Tüm Eğitimler",
          "Ücretli Eğitimler",
          "Ücretsiz Eğitimler",
        ];
      case CatalogFilterItem.education:
        return [
          "Tüm Eğitimler",
          "Dijital Gelişim",
          "Profesyonel Gelişim",
        ];
      case CatalogFilterItem.level:
        return [
          "Tüm Seviyeler",
          "Başlangıç",
          "Orta",
          "İleri",
        ];
      case CatalogFilterItem.language:
        return [
          "Tüm Diller",
          "Flutter",
          "Swift",
          "JavaScript",
          "Java",
          "C#",
          "Sql",
        ];
      case CatalogFilterItem.educator:
        return [
          "Tüm Eğitmenler",
          "Gürkan İlişen",
          "Kader Yavuz",
          "Ali Seyhan",
          "Engin Demiroğ",
          "Halit Enes Kalaycı",
        ];
    }
  }
}
