import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';

// ignore: camel_case_types
class _tobetoLightColors {
  static Color mor = const Color(0xFF7743DB);
  static Color beyaz = const Color(0xFFFFFBF5);
  static Color krem = const Color.fromARGB(170, 247, 239, 229);
  //static Color pembe = const Color(0xFFC3ACD0);
  static Color kahve = const Color.fromARGB(126, 204, 176, 175).withOpacity(0.2);
  static Color kirmizi = Colors.red.shade900;
  static Color yesil = const Color.fromARGB(255, 0, 210, 155);
  static Color siyah = Colors.black;
  static Color acikSiyah = Colors.black54;
}

final iosLightTheme = ThemeData(
  //useMaterial3: true,

  //ColorScheme Ayarlari
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: _tobetoLightColors.mor,
    error: _tobetoLightColors.kirmizi,
    onError: _tobetoLightColors.krem,
    onBackground: _tobetoLightColors.siyah,
    secondary: _tobetoLightColors.kirmizi,
    surface: _tobetoLightColors.siyah,
    background: _tobetoLightColors.kahve,
    onPrimary: _tobetoLightColors.siyah,
    onSecondary: _tobetoLightColors.beyaz, //! drawer üst kısım rengi buradan alıyor
    onSurface: _tobetoLightColors.siyah,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(
    color: _tobetoLightColors.krem,
  ),
  //TabBar Theme Ayarları
  tabBarTheme: TabBarTheme(
    dividerColor: _tobetoLightColors.siyah,
    labelColor: _tobetoLightColors.mor, // Seçili tabın yazı rengi
    indicatorColor: _tobetoLightColors.yesil, //_tobetoLightColors.mor, // Tab'ın altındaki gösterge rengi
    unselectedLabelColor: _tobetoLightColors.acikSiyah,
    // Seçili olmayan tabların yazı rengi
  ),
  //TextTheme Ayarları
  textTheme: TextTheme(
      headlineSmall: TextStyle(color: _tobetoLightColors.acikSiyah, letterSpacing: 1.0, fontWeight: FontWeight.w700),
      headlineMedium: TextStyle(color: _tobetoLightColors.mor, fontSize: 30, fontWeight: FontWeight.w700),
      bodyLarge: TextStyle(color: _tobetoLightColors.siyah, fontSize: 16.0)),

  //TextButton Ayarlari
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.transparent), textStyle: MaterialStatePropertyAll(TextStyle(fontWeight: FontWeight.bold))),
  ),
  //Drawer Ayarları
  drawerTheme: DrawerThemeData(
    backgroundColor: _tobetoLightColors.krem.withAlpha(255),
  ),

  //ElevatedButton Ayarlari
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 40,
        ),
      ),
      textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: font20)),
      foregroundColor: MaterialStatePropertyAll(_tobetoLightColors.krem),
      backgroundColor: MaterialStatePropertyAll(_tobetoLightColors.mor),
    ),
  ),

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: _tobetoLightColors.siyah,
    iconColor: _tobetoLightColors.siyah,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(
        color: _tobetoLightColors.siyah,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(color: _tobetoLightColors.acikSiyah, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(color: _tobetoLightColors.kirmizi, width: 2),
    ),
  ),
);

//! DARK THEME
// ignore: camel_case_types
class _tobetoDarkColors {
  static Color mor = const Color(0xFF7743DB);
  static Color beyaz = const Color(0xFFFFFBF5);
  static Color krem = const Color.fromARGB(170, 247, 239, 229);
  //static Color pembe = const Color(0xFFC3ACD0);
  static Color kahve = Color.fromARGB(124, 99, 86, 85).withOpacity(0.2);
  static Color kirmizi = Colors.red.shade900;
  static Color yesil = const Color.fromARGB(255, 0, 210, 155);
  static Color siyah = Colors.black;
  static Color acikSiyah = Colors.black54;
}

final iosDarkTheme = ThemeData(
  //useMaterial3: true,

  //ColorScheme Ayarlari
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: _tobetoDarkColors.mor,
    error: _tobetoDarkColors.kirmizi,
    onError: _tobetoDarkColors.krem,
    onBackground: _tobetoDarkColors.siyah,
    secondary: _tobetoDarkColors.kirmizi,
    surface: _tobetoDarkColors.siyah,
    background: _tobetoDarkColors.krem,
    onPrimary: _tobetoDarkColors.siyah,
    onSecondary: _tobetoDarkColors.krem, //!
    onSurface: _tobetoDarkColors.siyah,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(color: _tobetoDarkColors.kahve),

  //TabBar Theme Ayarları
  tabBarTheme: TabBarTheme(
    dividerColor: _tobetoDarkColors.siyah,
    labelColor: _tobetoDarkColors.beyaz, // Seçili tabın yazı rengi
    indicatorColor: _tobetoDarkColors.yesil, //_tobetoLightColors.mor, // Tab'ın altındaki gösterge rengi
    unselectedLabelColor: _tobetoDarkColors.krem,
    // Seçili olmayan tabların yazı rengi
  ),

  //TextTheme Ayarları
  textTheme: TextTheme(
    headlineSmall: TextStyle(color: _tobetoDarkColors.beyaz, letterSpacing: 1.0),
    headlineMedium: TextStyle(color: _tobetoDarkColors.mor, fontSize: 30),
  ),
  //TextButton Ayarlari
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
  ),
  //Drawer ayarları
  drawerTheme: DrawerThemeData(
    backgroundColor: _tobetoDarkColors.kahve.withAlpha(255),
  ),

  //ElevatedButton Ayarlari
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 40,
        ),
      ),
      textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: font20)),
      foregroundColor: MaterialStatePropertyAll(_tobetoDarkColors.krem),
      backgroundColor: MaterialStatePropertyAll(_tobetoDarkColors.mor),
    ),
  ),

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: _tobetoDarkColors.siyah,
    labelStyle: TextStyle(color: _tobetoDarkColors.siyah),
    iconColor: _tobetoDarkColors.siyah,
    hintStyle: TextStyle(color: _tobetoDarkColors.acikSiyah),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(
        color: _tobetoDarkColors.siyah,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(color: _tobetoDarkColors.acikSiyah, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(color: _tobetoDarkColors.kirmizi, width: 2),
    ),
  ),
);
