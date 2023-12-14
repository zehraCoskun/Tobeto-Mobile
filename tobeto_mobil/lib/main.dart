import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/global_theme.dart';
import 'package:tobeto_mobil/authentication/login/login_screen.dart';
import 'package:tobeto_mobil/screens/home_screen.dart';
import 'package:tobeto_mobil/screens/profile_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: "/login",
      routes: {
        // "/": (context) => SplashScreen(),
        "/login": (context) => const LoginScreen(),
        // "/register": (context) => RegisterScreen(),
        // "/recovery": (context) => RecoveryScreen(),
        "/home": (context) => const HomeScreen(),
        "/profile": (context) => const ProfilScreen(),
      },
    ),
  );
}

// ekstradan ekledigim routelar daha sonradan yapicagimiz kayit olma sayfasi ve parola unuttum sayfasina
// Navigator.of(context).pushNamed("/login") yapabilmek icin

// note - "/" bunu SplashScreen tarzinda login gelmeden once birsey gosterip sonra buraya animasyon yaparsak diye
// koydum sonra kararini veririz