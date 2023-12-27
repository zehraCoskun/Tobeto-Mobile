enum TabBarItem {
  application,
  education,
  announcement,
  survey,
  exam;

  @override
  String toString() {
    switch (this) {
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