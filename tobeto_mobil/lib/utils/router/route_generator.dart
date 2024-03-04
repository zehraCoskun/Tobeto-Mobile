import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/route_names.dart';
import 'package:tobeto_mobil/models/catalog/catalog_model.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';
import 'package:tobeto_mobil/pages/authentication/recover/recover_page.dart';
import 'package:tobeto_mobil/pages/authentication/register/register_page.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_page.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_detail/catalog_details_view.dart';
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
      case Routes.LOGIN:
        return defaultRouteTransition(const LoginPage());
      case Routes.HOME:
        return defaultRouteTransition(const HomePage());
      case Routes.REVIEWS:
        return defaultRouteTransition(const ReviewsPage());
      case Routes.PROFILE:
        return defaultRouteTransition(const ProfilePage());
      case Routes.CATALOG:
        return defaultRouteTransition(const CatalogPage());
      case Routes.CALENDAR:
        return defaultRouteTransition(const CalendarPage());
      case Routes.PROFILEEDIT:
        return defaultRouteTransition(const ProfileEditPage());
      case Routes.RECOVERY:
        return defaultRouteTransition(const RecoverPage());
      case Routes.REGISTER:
        return defaultRouteTransition(const RegisterPage());
      case Routes.EDUCATIONDETAILS:
        return defaultRouteTransition(
          EducationDetailsPage(education: settings.arguments as EducationModel),
        );
      case Routes.CATEGORY:
        return defaultRouteTransition(
          CategoryPage(category: settings.arguments as EducationCategoryItem),
        );
      case Routes.CATALOGDETAILS:
        return defaultRouteTransition(CatalogDetailsPage(
          catalog: settings.arguments as CatalogModel,
        ));
      default:
        return defaultRouteTransition(const HomePage());
    }
  }

  static PageRouteBuilder defaultRouteTransition(Widget child) {
    return RouteTransition.customTransitionBuilder(child: child);
  }
}
