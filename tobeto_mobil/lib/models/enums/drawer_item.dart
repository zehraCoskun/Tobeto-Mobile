enum DrawerItem {
  home,
  reviews,
  profile,
  catalog,
  calendar;

  String getString() {
    // DrawerItem.home.getString() olarak cagirdiginizda home kisminin ne olduguna bagli olarak
    //geriye istedigimiz stringi donduruyor
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
    // $name (home, catalog, profile, vs) yerine DrawerItem.home yazdiysaniz $name home olur
    // bizede "/home" dondurur
    return "/$name";

    //alternatif yol olurda herbir drawer item baska bir sayfaya yoneltmiycekse
    //ona gore bir yol bulmamiz gerekebilir

    // switch (this) {
    //   case DrawerItem.home:
    //     return "/home";
    //   case DrawerItem.ratings:
    //     return "/reviews";
    //   case DrawerItem.profile:
    //     return "/profile";
    //   case DrawerItem.catalog:
    //     return "/catalog";
    //   case DrawerItem.calendar:
    //     return "/calendar";
    // }
  }
}
