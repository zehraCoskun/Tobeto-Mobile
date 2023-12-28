import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/sizes.dart';

// ignore: camel_case_types
class _tobetoLightColors {
  static Color mor = const Color(0xFF7743DB);
  static Color beyaz = const Color(0xFFFFFBF5);
  static Color krem = const Color.fromARGB(255, 227, 220, 242);
  static Color kirmizi = Colors.red.shade900;
  static Color yesil = const Color.fromARGB(255, 0, 210, 155);
  static Color siyah = Colors.black;
  static Color acikSiyah = Colors.black54;
}

final androidLightTheme = ThemeData(
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
    background: _tobetoLightColors.krem,
    onPrimary: _tobetoLightColors.siyah,
    onSecondary: _tobetoLightColors.beyaz,
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
    indicatorColor: _tobetoLightColors
        .yesil, //_tobetoLightColors.mor, // Tab'ın altındaki gösterge rengi
    unselectedLabelColor: _tobetoLightColors.acikSiyah,
    // Seçili olmayan tabların yazı rengi
  ),

  //TextTheme Ayarları
  textTheme: TextTheme(
      headlineSmall: TextStyle(
          color: _tobetoLightColors.acikSiyah,
          letterSpacing: 1.0,
          fontWeight: FontWeight.w700),
      headlineMedium: TextStyle(
          color: _tobetoLightColors.mor,
          fontSize: 30,
          fontWeight: FontWeight.w700),
      bodyLarge: TextStyle(color: _tobetoLightColors.siyah, fontSize: 16.0),
      titleLarge: TextStyle(color: _tobetoLightColors.yesil),
      bodySmall: TextStyle(
          color: _tobetoLightColors.acikSiyah,
          fontStyle: FontStyle.italic,
          fontSize: 16)),

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
//Drawer Ayarları
  drawerTheme: DrawerThemeData(
    backgroundColor: _tobetoLightColors.krem,
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
      foregroundColor:
          MaterialStatePropertyAll(_tobetoLightColors.beyaz), //text color
      backgroundColor: MaterialStatePropertyAll(_tobetoLightColors.mor),
    ),
  ),

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: _tobetoLightColors.siyah,
    iconColor: _tobetoLightColors.siyah,

    //text field tiklandiginda yani focuslandiginda cikacak border ayarlari
    focusedBorder: OutlineInputBorder(
      //borderRadius = BorderRadius. yazarak istediginizi verebilirsiniz koselerinin seklini cizer
      borderRadius: BorderRadius.circular(border16),

      //borderSide = BoderSide() olarak verebilirsiniz etrafindaki
      //borderin kalinligini, rengini vb. ayarlayabilirisiniz
      borderSide: BorderSide(
        color: _tobetoLightColors.siyah,
        width: 2,
      ),
    ),

    //text field tiklanmamis haldeykenki cikacak border ayarlari
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(color: _tobetoLightColors.acikSiyah, width: 1.5),
    ),

    //text field icerisindeki string de hata oldugundaki cikacak border ayarlari
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
  static Color kirmizi = Colors.red.shade900;
  static Color yesil = const Color.fromARGB(255, 0, 210, 155);
  static Color siyah = Colors.black;
  static Color acikSiyah = Colors.black54;
  static Color lacivert = const Color.fromARGB(255, 28, 28, 64);
}

final androidDarkTheme = ThemeData(
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
    onSecondary: _tobetoDarkColors.krem,
    onSurface: _tobetoDarkColors.siyah,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(color: _tobetoDarkColors.lacivert),

  //TabBar Theme Ayarları
  tabBarTheme: TabBarTheme(
    dividerColor: _tobetoDarkColors.siyah,
    labelColor: _tobetoDarkColors.beyaz, // Seçili tabın yazı rengi
    indicatorColor: _tobetoDarkColors
        .yesil, //_tobetoLightColors.mor, // Tab'ın altındaki gösterge rengi
    unselectedLabelColor: _tobetoDarkColors.krem,
    // Seçili olmayan tabların yazı rengi
  ),

  //TextTheme Ayarları
  textTheme: TextTheme(
    headlineSmall:
        TextStyle(color: _tobetoDarkColors.beyaz, letterSpacing: 1.0),
    headlineMedium: TextStyle(color: _tobetoDarkColors.mor, fontSize: 30),
    titleLarge: TextStyle(color: _tobetoDarkColors.yesil),
    titleMedium: TextStyle(color: _tobetoDarkColors.beyaz),
    titleSmall: TextStyle(color: _tobetoDarkColors.beyaz),
    bodyLarge: TextStyle(color: _tobetoDarkColors.beyaz),
    bodySmall: TextStyle(
      color: _tobetoDarkColors.krem,
      fontStyle: FontStyle.italic,
      fontSize: 16,
    ),
  ),

  //TextButton Ayarlari
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.transparent,
        ),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontWeight: FontWeight.bold, // Yazının kalınlığını belirleme
          ),
        )),
  ),
//Drawer ayarları
  drawerTheme: DrawerThemeData(
    backgroundColor: _tobetoDarkColors.lacivert,
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
      foregroundColor:
          MaterialStatePropertyAll(_tobetoDarkColors.beyaz), //text color
      backgroundColor: MaterialStatePropertyAll(_tobetoDarkColors.mor),
    ),
  ),

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: _tobetoDarkColors.siyah,
    labelStyle: TextStyle(color: _tobetoDarkColors.siyah),
    iconColor: _tobetoDarkColors.siyah,
    hintStyle: TextStyle(color: _tobetoDarkColors.acikSiyah),
    //text field tiklandiginda yani focuslandiginda cikacak border ayarlari
    focusedBorder: OutlineInputBorder(
      //borderRadius = BorderRadius. yazarak istediginizi verebilirsiniz koselerinin seklini cizer
      borderRadius: BorderRadius.circular(border16),

      //borderSide = BoderSide() olarak verebilirsiniz etrafindaki
      //borderin kalinligini, rengini vb. ayarlayabilirisiniz
      borderSide: BorderSide(
        color: _tobetoDarkColors.siyah,
        width: 2,
      ),
    ),

    //text field tiklanmamis haldeykenki cikacak border ayarlari
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(border16),
      borderSide: BorderSide(color: _tobetoDarkColors.acikSiyah, width: 1.5),
    ),

    //text field icerisindeki string de hata oldugundaki cikacak border ayarlari
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: _tobetoDarkColors.kirmizi, width: 2),
    ),
  ),
);



/*User
ColorScheme myColors = ColorScheme(
  brightness: Brightness.light,       // Uygulamanın ışık teması
  primary: MyColors.mainTextColor,    // Birincil renk, örneğin buton rengi
  error: MyColors.otherColor,          // Hata durumlarında kullanılan renk
  onError: MyColors.otherColor,        // Hata durumlarında metin rengi
  onBackground: MyColors.mainTextColor, // Arka plan üzerindeki metin rengi
  secondary: MyColors.otherColor,      // İkincil renk, genellikle vurgu rengi
  surface: MyColors.secondaryTextColor, // Yüzey üzerindeki metin rengi
  background: MyColors.mainColor,      // Genel arka plan rengi
  onPrimary: MyColors.secondaryTextColor, // Birincil elemanlar üzerindeki metin rengi
  onSecondary: MyColors.mainTextColor,   // İkincil elemanlar üzerindeki metin rengi
  onSurface: MyColors.mainColor,          // Yüzey üzerindeki metin rengi
);*/