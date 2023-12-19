import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/android_theme.dart';
import 'package:tobeto_mobil/authentication/login/login_screen.dart';
import 'package:tobeto_mobil/consts/ios_theme.dart';
import 'package:tobeto_mobil/screens/home_screen.dart';
import 'package:tobeto_mobil/widgets/route_transition.dart';

void main() {
  runApp(
    MaterialApp(
      theme: getPlatformColor().first,
      darkTheme: getPlatformColor().last,
      themeMode: ThemeMode.system,
      home: const LoginScreen(),
      initialRoute: "/login",
      onGenerateRoute: (route) => onGenerateRoute(route),
      // getPages: [
      //   ...GetRouting.getPages(DrawerItem.values),
      // ],

      // routes: {
      //   // "/": (context) => SplashScreen(),
      //   "/login": (context) => const LoginScreen(),
      //   // "/register": (context) => RegisterScreen(),
      //   // "/recovery": (context) => RecoveryScreen(),

      //   //bunu daha guzel bir sekilde ayarlayabiliriz belki, 20 tane eleman olsa boyle ugrasilmaz
      //   //bir kac satirlik kod ile DrawerItem larin tamaminin map ini cikarmamiz lazim tabiki
      //   //bunu drawerItem icerisindeki herbir enumin route olarak karsiligi olucagina karar kilarsak
      //   DrawerItem.home.getRouteName(): (context) => const HomeScreen(),
      //   DrawerItem.profile.getRouteName(): (context) => const ProfilScreen(),
      //   DrawerItem.ratings.getRouteName(): (context) => const ProfilScreen(),
      //   DrawerItem.catalog.getRouteName(): (context) => const ProfilScreen(),
      //   DrawerItem.calendar.getRouteName(): (context) => const ProfilScreen(),
      // },
    ),
  );
}

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/login":
      return RouteTransition.scaleTransitionBuilder(
        child: const LoginScreen(),
      );
    case "/home":
      return RouteTransition.scaleTransitionBuilder(
        child: const HomeScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
        settings: settings,
      );
  }
}

List<ThemeData> getPlatformColor() {
  if (Platform.isAndroid) {
    return [
      androidLightTheme,
      androidDarkTheme,
    ];
  } else if (Platform.isIOS) {
    return [
      iosLightTheme,
      iosDarkTheme,
    ];
  }
  return [];
}

// ekstradan ekledigim routelar daha sonradan yapicagimiz kayit olma sayfasi ve parola unuttum sayfasina
// Navigator.of(context).pushNamed("/login") yapabilmek icin

// note - "/" bunu SplashScreen tarzinda login gelmeden once birsey gosterip sonra buraya animasyon yaparsak diye
// koydum sonra kararini veririz