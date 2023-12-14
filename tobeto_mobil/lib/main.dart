import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/global_theme.dart';
import 'package:tobeto_mobil/authentication/login/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: theme,
      initialRoute: "/login",
      routes: {
        // "/": (context) => SplashScreen(),
        "/login": (context) => const LoginScreen(),
        // "/register": (context) => RegisterScreen(),
        // "/recovery": (context) => RecoveryScreen(),
      },
    ),
  );
}

// ekstradan ekledigim routelar daha sonradan yapicagimiz kayit olma sayfasi ve parola unuttum sayfasina
// Navigator.of(context).pushNamed("/login") yapabilmek icin

// note - "/" bunu SplashScreen tarzinda login gelmeden once birsey gosterip sonra buraya animasyon yaparsak diye
// koydum sonra kararini veririz