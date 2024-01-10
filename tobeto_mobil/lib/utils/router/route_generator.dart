import 'package:flutter/material.dart';
import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/models/enums/catalog_category_item.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_page.dart';
import 'package:tobeto_mobil/pages/login/login_page.dart';
import 'package:tobeto_mobil/pages/home/home_page.dart';
import 'package:tobeto_mobil/pages/profile/profile_screen.dart';
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
        return defaultRouteTransition(const ProfileScreen());
      case "/catalog":
        return defaultRouteTransition(CatalogPage(
          catalogList: catalogModelData,
          catalogItems: CatalogCategoryItem.values,
        ));
      default:
        return defaultRouteTransition(const HomePage());
    }
  }

  static PageRouteBuilder defaultRouteTransition(Widget child) {
    return RouteTransition.customTransitionBuilder(child: child);
  }
}
