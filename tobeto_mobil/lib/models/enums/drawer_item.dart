import 'package:flutter/material.dart';
import 'package:tobeto_mobil/screens/home_screen.dart';
import 'package:tobeto_mobil/screens/profile_screen.dart';

enum DrawerItem {
  home,
  ratings,
  profile,
  catalog,
  calendar;

  String getString() {
    // DrawerItem.home.getString() olarak cagirdiginizda home kisminin ne olduguna bagli olarak
    //geriye istedigimiz stringi donduruyor
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

  Widget getRoute() {
    switch (this) {
      case DrawerItem.home:
        return const HomeScreen();
      case DrawerItem.ratings:
        return const ProfileScreen();
      case DrawerItem.profile:
        return const ProfileScreen();
      case DrawerItem.catalog:
        return const ProfileScreen();
      case DrawerItem.calendar:
        return const ProfileScreen();
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
