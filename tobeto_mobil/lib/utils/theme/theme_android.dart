import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/sizes.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

final androidLightTheme = ThemeData(
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
    onSecondary: TobetoLightColors.beyaz,
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
    labelColor: TobetoLightColors.mor, // Seçili tabın yazı rengi
    indicatorColor: TobetoLightColors.yesil, //_tobetoLightColors.mor, // Tab'ın altındaki gösterge rengi
    unselectedLabelColor: TobetoLightColors.acikSiyah,
    // Seçili olmayan tabların yazı rengi
  ),

  //TextTheme Ayarları
  textTheme: TextTheme(
    headlineSmall: TextStyle(color: TobetoLightColors.acikSiyah, letterSpacing: 1.0, fontWeight: FontWeight.w700),
    headlineMedium: TextStyle(color: TobetoLightColors.mor, fontSize: 30, fontWeight: FontWeight.w700),
    titleSmall: TextStyle(color: TobetoLightColors.lacivert),
    titleMedium: TextStyle(color: TobetoLightColors.lacivert),
    titleLarge: TextStyle(color: TobetoLightColors.yesil),
    bodySmall: TextStyle(color: TobetoLightColors.acikSiyah, fontStyle: FontStyle.italic, fontSize: 16),
    bodyMedium: TextStyle(color: TobetoLightColors.beyaz, fontSize: 20.0), //!
    bodyLarge: TextStyle(color: TobetoLightColors.siyah, fontSize: 16.0, fontWeight: FontWeight.w400),
  ),

  //TextButton Ayarları
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.transparent,
        ),
        textStyle: MaterialStatePropertyAll(
          TextStyle(fontWeight: FontWeight.bold // Yazının kalınlığı
              ),
        )),
  ),
  //IconButton Ayarları
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStatePropertyAll(TobetoLightColors.mor),
    ),
  ),
//Drawer Ayarları
  drawerTheme: DrawerThemeData(
    backgroundColor: TobetoLightColors.krem,
  ),

  //ElevatedButton Ayarları
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 40,
        ),
      ),
      textStyle: const MaterialStatePropertyAll(
        TextStyle(fontSize: font20),
      ),
      foregroundColor: MaterialStatePropertyAll(TobetoLightColors.beyaz), //text color
      backgroundColor: MaterialStatePropertyAll(TobetoLightColors.mor),
    ),
  ),

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: TobetoLightColors.siyah,
    iconColor: TobetoLightColors.siyah,

    //text field tiklandiginda yani focuslandiginda cikacak border ayarlari
    focusedBorder: OutlineInputBorder(
      //borderRadius = BorderRadius. yazarak istediginizi verebilirsiniz koselerinin seklini cizer
      borderRadius: BorderRadius.circular(border16),

      //borderSide = BoderSide() olarak verebilirsiniz etrafindaki
      //borderin kalinligini, rengini vb. ayarlayabilirisiniz
      borderSide: BorderSide(
        color: TobetoLightColors.siyah,
        width: 2,
      ),
    ),

    //text field tiklanmamis haldeykenki cikacak border ayarlari
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(color: TobetoLightColors.acikSiyah, width: 1.5),
    ),

    //text field icerisindeki string de hata oldugundaki cikacak border ayarlari
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(color: TobetoLightColors.kirmizi, width: 2),
    ),
  ),
);

//! DARK THEME
final androidDarkTheme = ThemeData(
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
    titleSmall: TextStyle(color: TobetoDarkColors.beyaz),
    titleMedium: TextStyle(color: TobetoDarkColors.beyaz),
    titleLarge: TextStyle(color: TobetoDarkColors.yesil),
    bodySmall: TextStyle(color: TobetoLightColors.krem, fontStyle: FontStyle.italic, fontSize: 16),
    bodyMedium: TextStyle(color: TobetoDarkColors.krem, fontSize: 20.0),
    bodyLarge: TextStyle(color: TobetoDarkColors.siyah, fontSize: 16.0, fontWeight: FontWeight.w400), //!
  ),

  //TextButton Ayarlari
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.transparent,
        ),
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

  //ElevatedButton Ayarlari
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 40,
        ),
      ),
      textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: font20)),
      foregroundColor: MaterialStatePropertyAll(TobetoDarkColors.beyaz), //text color
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
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(
        color: TobetoDarkColors.siyah,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(color: TobetoDarkColors.acikSiyah, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: TobetoDarkColors.kirmizi, width: 2),
    ),
  ),
);
