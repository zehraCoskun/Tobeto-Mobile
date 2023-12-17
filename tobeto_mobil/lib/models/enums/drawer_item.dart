enum DrawerItem {
  home,
  ratings,
  profile,
  catalog,
  calendar;

  String getString() {
    switch (this) {
      case DrawerItem.home:
        return "🏠 Anasayfa";
      case DrawerItem.ratings:
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

    //alternatif yol olurda herbir drawer item baska bir sayfaya yoneltmiycekse
    //ona gore bir yol bulmamiz gerekebilir

    // switch (this) {
    //   case DrawerItem.home:
    //     return "/home";
    //   case DrawerItem.ratings:
    //     return "/ratings";
    //   case DrawerItem.profile:
    //     return "/profile";
    //   case DrawerItem.catalog:
    //     return "/catalog";
    //   case DrawerItem.calendar:
    //     return "/calendar";
    // }
  }
}
