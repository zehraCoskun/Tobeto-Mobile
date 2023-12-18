import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/global_theme.dart';
import 'package:tobeto_mobil/authentication/login/login_screen.dart';
import 'package:tobeto_mobil/models/enums/drawer_item.dart';
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

        //bunu daha guzel bir sekilde ayarlayabiliriz belki, 20 tane eleman olsa boyle ugrasilmaz
        //bir kac satirlik kod ile DrawerItem larin tamaminin map ini cikarmamiz lazim tabiki
        //bunu drawerItem icerisindeki herbir enumin route olarak karsiligi olucagina karar kilarsak
        DrawerItem.home.getRouteName(): (context) => const HomeScreen(),
        DrawerItem.profile.getRouteName(): (context) => const ProfilScreen(),
        DrawerItem.ratings.getRouteName(): (context) => const ProfilScreen(),
        DrawerItem.catalog.getRouteName(): (context) => const ProfilScreen(),
        DrawerItem.calendar.getRouteName(): (context) => const ProfilScreen(),
      },
    ),
  );
}

// ekstradan ekledigim routelar daha sonradan yapicagimiz kayit olma sayfasi ve parola unuttum sayfasina
// Navigator.of(context).pushNamed("/login") yapabilmek icin

// note - "/" bunu SplashScreen tarzinda login gelmeden once birsey gosterip sonra buraya animasyon yaparsak diye
// koydum sonra kararini veririz