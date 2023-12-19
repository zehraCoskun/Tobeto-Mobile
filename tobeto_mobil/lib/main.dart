import 'package:flutter/material.dart';
import 'package:tobeto_mobil/authentication/login/login_screen.dart';
import 'package:tobeto_mobil/utils/routers/route_generator.dart';
import 'package:tobeto_mobil/utils/theme/theme_generator.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeGenerator.generateTheme().first,
      darkTheme: ThemeGenerator.generateTheme().last,
      themeMode: ThemeMode.system,
      home: const LoginScreen(),
      initialRoute: "/login",
      onGenerateRoute: (route) => RouteGenerator.onGenerateRoute(route),
    ),
  );
}