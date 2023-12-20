import 'package:flutter/material.dart';
import 'package:tobeto_mobil/authentication/login/login_screen.dart';
import 'package:tobeto_mobil/screens/home_screen.dart';
import 'package:tobeto_mobil/screens/profile_screen.dart';
import 'package:tobeto_mobil/utils/router/route_transition.dart';

class RouteGenerator {
  const RouteGenerator._();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/login":
        return defaultRouteTransition(const LoginScreen());
      case "/home":
        return defaultRouteTransition(const HomeScreen());
      case "/profile":
        return defaultRouteTransition(const ProfileScreen());
      default:
        return defaultRouteTransition(const HomeScreen());
    }
  }

  static PageRouteBuilder defaultRouteTransition(Widget child) {
    return RouteTransition.customTransitionBuilder(child: child);
  }
}
