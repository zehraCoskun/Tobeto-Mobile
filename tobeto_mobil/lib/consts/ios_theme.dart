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

  //TextTheme Ayarları
  textTheme: TextTheme(
      headlineSmall: TextStyle(color: _tobetoLightColors.acikSiyah, letterSpacing: 1.0, fontWeight: FontWeight.w700),
      headlineMedium: TextStyle(color: _tobetoLightColors.mor, fontSize: 30, fontWeight: FontWeight.w700),
      bodyLarge: TextStyle(
        color: _tobetoLightColors.siyah,
        fontSize: 16.0,
      )),

  //TextButton Ayarlari
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
        textStyle: MaterialStatePropertyAll(
          TextStyle(fontWeight: FontWeight.bold),
        )),
  ),

  drawerTheme: DrawerThemeData(
    backgroundColor: _tobetoLightColors.krem,
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
final iosDarkTheme = ThemeData(
  //useMaterial3: true,

  //ColorScheme Ayarlari
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: _tobetoLightColors.mor,
    error: _tobetoLightColors.kirmizi,
    onError: _tobetoLightColors.krem,
    onBackground: _tobetoLightColors.siyah,
    secondary: _tobetoLightColors.kirmizi,
    surface: _tobetoLightColors.siyah,
    background: _tobetoLightColors.krem,
    onPrimary: _tobetoLightColors.siyah,
    onSecondary: _tobetoLightColors.krem, //!
    onSurface: _tobetoLightColors.siyah,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(color: _tobetoLightColors.kahve),

  textTheme: TextTheme(
    headlineSmall: TextStyle(color: _tobetoLightColors.beyaz, letterSpacing: 1.0),
    headlineMedium: TextStyle(color: _tobetoLightColors.mor, fontSize: 30),
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

  drawerTheme: DrawerThemeData(
    backgroundColor: _tobetoLightColors.kahve,
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
    labelStyle: TextStyle(color: _tobetoLightColors.siyah),
    iconColor: _tobetoLightColors.siyah,
    hintStyle: TextStyle(color: _tobetoLightColors.acikSiyah),
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
