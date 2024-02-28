import 'package:tobeto_mobil/constants/route_names.dart';

enum DrawerItem {
  reviews,
  profile,
  catalog,
  calendar;

  String getString() {
    switch (this) {
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
    switch (this) {
      case DrawerItem.reviews:
        return Routes.REVIEWS;
      case DrawerItem.profile:
        return Routes.PROFILE;
      case DrawerItem.catalog:
        return Routes.CATALOG;
      case DrawerItem.calendar:
        return Routes.CALENDAR;
    }
  }
}
