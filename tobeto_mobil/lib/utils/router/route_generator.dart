import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_page.dart';
import 'package:tobeto_mobil/pages/login/login_page.dart';
import 'package:tobeto_mobil/pages/home/home_page.dart';
import 'package:tobeto_mobil/pages/profile/profil_page.dart';
import 'package:tobeto_mobil/utils/router/route_transition.dart';

class RouteGenerator {
  const RouteGenerator._();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/login":
        return defaultRouteTransition(const LoginPage());
      case "/home":
        return defaultRouteTransition(const HomePage());
      case "/profile":
        return defaultRouteTransition(const ProfilPage());
      case "/catalog":
        return defaultRouteTransition(const CatalogPage());
      default:
        return defaultRouteTransition(const HomePage());
    }
  }

  static PageRouteBuilder defaultRouteTransition(Widget child) {
    return RouteTransition.customTransitionBuilder(child: child);
  }
}
