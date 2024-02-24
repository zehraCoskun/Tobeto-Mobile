import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_page.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_detail/catalog_detail_view.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_page.dart';
import 'package:tobeto_mobil/pages/authentication/login/login_page.dart';
import 'package:tobeto_mobil/pages/education_category/category_page.dart';
import 'package:tobeto_mobil/pages/education_details/education_details_page.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_item.dart';
import 'package:tobeto_mobil/pages/home/home_page.dart';
import 'package:tobeto_mobil/pages/profile/profile_page.dart';
import 'package:tobeto_mobil/pages/profile_edit/profile_edit_page.dart';
import 'package:tobeto_mobil/pages/review_view/reviews_page.dart';
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
        return defaultRouteTransition(const ProfilePage());
      case "/catalog":
        return defaultRouteTransition(const CatalogPage());
      case "/calendar":
        return defaultRouteTransition(const CalendarPage());
      case "/profileEdit":
        return defaultRouteTransition(const ProfileEditPage());
      case "/details":
        return defaultRouteTransition(
          EducationDetailsPage(education: settings.arguments as EducationModel),
        );
      case "/category":
        return defaultRouteTransition(
          CategoryPage(category: settings.arguments as EducationCategoryItem),
        );
      case "/catalogDetail":
        return defaultRouteTransition(CatalogDetailView());
      default:
        return defaultRouteTransition(const HomePage());
    }
  }

  static PageRouteBuilder defaultRouteTransition(Widget child) {
    return RouteTransition.customTransitionBuilder(child: child);
  }
}
