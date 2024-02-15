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
        return "Eğitimler";
      case CatalogFilterItem.level:
        return "Seviye";
      case CatalogFilterItem.subject:
        return "Konu";
      case CatalogFilterItem.language:
        return "Yazılım Dili";
      case CatalogFilterItem.educator:
        return "Eğitmen";
      case CatalogFilterItem.status:
        return "Durum";
    }
  }

  List<String> toList() {
    switch (this) {
      case CatalogFilterItem.category:
        return [
          "Tüm Eğitimler",
          " Ücretli Eğitimler",
          "Ücretsiz Eğitimler",
        ];
      case CatalogFilterItem.education:
        return ["Tüm Eğitimler", "Dijital Gelişim", "Profesyonel Gelişim"];
      case CatalogFilterItem.level:
        return [
          "Tüm Seviyeler",
          "Başlangıç",
          "Orta",
          "İleri",
        ];
      case CatalogFilterItem.subject:
        return [
          "Tüm Konular",
          "C#",
          "Profesyonel Gelişim Eğitimleri",
          "Çeşitlilik ve Kapsayıcılık",
          "Sunum Becerileri",
        ];
      case CatalogFilterItem.language:
        return [
          "Tüm Diller",
          "Flutter",
          "Swift",
          "JavaScript",
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
      case CatalogFilterItem.status:
        return [
          " Tüm Eğitimler",
          "Alınan Tüm Eğitimler",
          " Henüz Başlanmamış Eğitimler",
          "Tamamlanan Eğitimler",
          " Devam Eden Eğitimler",
        ];
    }
  }
}
