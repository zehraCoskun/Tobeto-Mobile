enum TabBarItem {
  main,
  education,
  announcement,
  exam,
  survey,
  application;

  @override
  String toString() {
    switch (this) {
      case TabBarItem.main:
        return "Anasayfa";
      case TabBarItem.application:
        return "Başvurularım";
      case TabBarItem.education:
        return "Eğitimlerim";
      case TabBarItem.announcement:
        return "Duyuru ve Haberlerim";
      case TabBarItem.survey:
        return "Anketlerim";
      case TabBarItem.exam:
        return "Sınavlarım";
    }
  }
}