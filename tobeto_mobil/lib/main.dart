import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/firebase_options.dart';
import 'package:tobeto_mobil/utils/router/route_generator.dart';
import 'package:tobeto_mobil/utils/theme/theme_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeGenerator.lightTheme(),
      darkTheme: ThemeGenerator.darkTheme(),
      themeMode: ThemeMode.system,
      initialRoute: "/login",
      onGenerateRoute: (route) => RouteGenerator.onGenerateRoute(route),
    ),
  );
}
