import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/calendar/calendar_page.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/catalog/catalog_page.dart';
import 'package:tobeto_mobil/pages/entry_pages/login/login_page.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/home_page.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/profil_page.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/profile_edit_page/profile_edit_page.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/review/reviews_page.dart';
import 'package:tobeto_mobil/utils/router/route_transition.dart';

class RouteGenerator {
  const RouteGenerator._();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/login":
        return defaultRouteTransition(const LoginPage());
      case "/home":
        return defaultRouteTransition(const HomePage());
      case "/reviews":
        return defaultRouteTransition(const ReviewsPage());
      case "/profile":
        return defaultRouteTransition(const ProfilPage());
      case "/catalog":
        return defaultRouteTransition(const CatalogPage());
      case "/calendar":
        return defaultRouteTransition(const CalendarPage());
      case "/profileEdit":
        return defaultRouteTransition(const ProfileEditPage());
      default:
        return defaultRouteTransition(const HomePage());
    }
  }

  static PageRouteBuilder defaultRouteTransition(Widget child) {
    return RouteTransition.customTransitionBuilder(child: child);
  }
}
