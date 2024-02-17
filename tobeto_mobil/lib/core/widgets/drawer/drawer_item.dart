enum DrawerItem {
  home,
  reviews,
  profile,
  catalog,
  calendar;

  String getString() {
    switch (this) {
      case DrawerItem.home:
        return "🏠 Anasayfa";
      case DrawerItem.reviews:
        return "🖊️ Değerlendirmeler";
      case DrawerItem.profile:
        return "😊 Profilim";
      case DrawerItem.catalog:
        return "📜 Katalog";
      case DrawerItem.calendar:
        return "🗓️ Takvim";
    }
  }

  String getRouteName() {
    return "/$name";
  }
}