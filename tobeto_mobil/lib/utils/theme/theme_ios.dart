import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';

class TobetoLightColors {
  static Color mor = const Color(0xFF7743DB);
  static Color beyaz = const Color(0xFFFFFBF5);
  static Color krem = const Color.fromARGB(255, 227, 220, 242);
  static Color kirmizi = Colors.red.shade900;
  static Color yesil = const Color.fromARGB(255, 0, 210, 155);
  static Color siyah = Colors.black;
  static Color acikSiyah = Colors.black54;
  static Color lacivert = const Color.fromARGB(255, 28, 28, 64);
}

final iosLightTheme = ThemeData(
  //ColorScheme Ayarlari
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: TobetoLightColors.mor,
    error: TobetoLightColors.kirmizi,
    onError: TobetoLightColors.krem,
    onBackground: TobetoLightColors.siyah,
    secondary: TobetoLightColors.kirmizi,
    surface: TobetoLightColors.siyah,
    background: TobetoLightColors.krem,
    onPrimary: TobetoLightColors.siyah,
    onSecondary: TobetoLightColors.beyaz, //! drawer üst kısım rengi buradan alıyor
    onSurface: TobetoLightColors.siyah,
    outline: TobetoLightColors.lacivert,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(
    color: TobetoLightColors.krem,
  ),

  //TabBar Theme Ayarları
  tabBarTheme: TabBarTheme(
    dividerColor: TobetoLightColors.siyah,
    labelColor: TobetoLightColors.mor,
    indicatorColor: TobetoLightColors.yesil,
    unselectedLabelColor: TobetoLightColors.acikSiyah,
  ),
  //TextTheme Ayarları
  textTheme: TextTheme(
    headlineSmall: TextStyle(color: TobetoLightColors.acikSiyah, letterSpacing: 1.0, fontWeight: FontWeight.w700),
    headlineMedium: TextStyle(color: TobetoLightColors.mor, fontSize: 30, fontWeight: FontWeight.w700),
    titleSmall: TextStyle(color: TobetoLightColors.lacivert),
    titleMedium: TextStyle(color: TobetoLightColors.lacivert), 
    titleLarge: TextStyle(
      color: TobetoLightColors.lacivert,
      fontWeight: FontWeight.bold,
      height: 2,
      shadows: [whiteTitleShadow()],
    ),
    bodySmall: TextStyle(color: TobetoLightColors.acikSiyah, fontStyle: FontStyle.italic, fontSize: 16),
    bodyMedium: TextStyle(color: TobetoLightColors.beyaz, fontSize: 20.0),
    bodyLarge: TextStyle(color: TobetoLightColors.siyah, fontSize: 16.0, fontWeight: FontWeight.w400),
  ),

  //TextButton Ayarlari
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.transparent), textStyle: MaterialStatePropertyAll(TextStyle(fontWeight: FontWeight.bold))),
  ),
  //IconButton Ayarları
  iconButtonTheme: IconButtonThemeData(style: ButtonStyle(iconColor: MaterialStatePropertyAll(TobetoLightColors.mor))),
  //Drawer Ayarları
  drawerTheme: DrawerThemeData(
    backgroundColor: TobetoLightColors.krem,
  ),

  //ElevatedButton Ayarlari
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 40,
        ),
      ),
      textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 20)),
      foregroundColor: MaterialStatePropertyAll(TobetoLightColors.beyaz),
      backgroundColor: MaterialStatePropertyAll(TobetoLightColors.mor),
    ),
  ),

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: TobetoLightColors.siyah,
    iconColor: TobetoLightColors.siyah,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: TobetoLightColors.siyah,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: TobetoLightColors.acikSiyah, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: TobetoLightColors.kirmizi, width: 2),
    ),
  ),
);

//! DARK THEME
class TobetoDarkColors {
  static Color mor = const Color(0xFF7743DB);
  static Color beyaz = const Color(0xFFFFFBF5);
  static Color krem = const Color.fromARGB(170, 247, 239, 229);
  static Color kirmizi = Colors.red.shade900;
  static Color yesil = const Color.fromARGB(255, 0, 210, 155);
  static Color siyah = Colors.black;
  static Color acikSiyah = Colors.black54;
  static Color lacivert = const Color.fromARGB(255, 28, 28, 64);
}

final iosDarkTheme = ThemeData(
  //useMaterial3: true,

  //ColorScheme Ayarlari
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: TobetoDarkColors.mor,
    error: TobetoDarkColors.kirmizi,
    onError: TobetoDarkColors.krem,
    onBackground: TobetoDarkColors.siyah,
    secondary: TobetoDarkColors.kirmizi,
    surface: TobetoDarkColors.siyah,
    background: TobetoDarkColors.krem,
    onPrimary: TobetoDarkColors.siyah,
    onSecondary: TobetoDarkColors.krem,
    onSurface: TobetoDarkColors.siyah,
    outline: TobetoLightColors.lacivert,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(color: TobetoDarkColors.lacivert),

  //TabBar Theme Ayarları
  tabBarTheme: TabBarTheme(
    dividerColor: TobetoDarkColors.siyah,
    labelColor: TobetoDarkColors.beyaz,
    indicatorColor: TobetoDarkColors.yesil,
    unselectedLabelColor: TobetoDarkColors.krem,
  ),

  //TextTheme Ayarları
  textTheme: TextTheme(
    headlineSmall: TextStyle(color: TobetoDarkColors.beyaz, letterSpacing: 1.0),
    headlineMedium: TextStyle(color: TobetoDarkColors.mor, fontSize: 30),
    titleSmall: TextStyle(color: TobetoDarkColors.krem),
    titleMedium: TextStyle(color: TobetoDarkColors.beyaz),
    titleLarge: TextStyle(
      color: TobetoDarkColors.beyaz,
      fontWeight: FontWeight.bold,
      height: 2,
      shadows: [
        blackTitleShadow(),
        blackTitleShadow(),
      ],
    ),
    bodySmall: TextStyle(color: TobetoLightColors.krem, fontStyle: FontStyle.italic, fontSize: 16),
    bodyMedium: TextStyle(color: TobetoDarkColors.krem, fontSize: 20.0),
    bodyLarge: TextStyle(color: TobetoDarkColors.siyah, fontSize: 16.0, fontWeight: FontWeight.w400),
  ),
  //TextButton Ayarları
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
  ),
  //IconButton Ayarları
  iconButtonTheme: IconButtonThemeData(style: ButtonStyle(iconColor: MaterialStatePropertyAll(TobetoDarkColors.krem))),
  //Drawer ayarları
  drawerTheme: DrawerThemeData(
    backgroundColor: TobetoDarkColors.lacivert,
  ),

  //ElevatedButton Ayarları
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 40,
        ),
      ),
      textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 20)),
      foregroundColor: MaterialStatePropertyAll(TobetoDarkColors.beyaz),
      backgroundColor: MaterialStatePropertyAll(TobetoDarkColors.mor),
    ),
  ),

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: TobetoDarkColors.siyah,
    labelStyle: TextStyle(color: TobetoDarkColors.siyah),
    iconColor: TobetoDarkColors.siyah,
    hintStyle: TextStyle(color: TobetoDarkColors.acikSiyah),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: TobetoDarkColors.siyah,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: TobetoDarkColors.acikSiyah, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: TobetoDarkColors.kirmizi, width: 2),
    ),
  ),
);
