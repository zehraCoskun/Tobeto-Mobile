import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/constants.dart';

// ignore: camel_case_types
class _tobetoLightColors {
  static Color mor = const Color(0xFF7743DB);
  //static Color beyaz = const Color(0xFFFFFBF5);
  static Color krem = const Color.fromARGB(170, 247, 239, 229);
  //static Color pembe = const Color(0xFFC3ACD0);
  static Color kahve = const Color.fromARGB(126, 204, 176, 175).withOpacity(0.2);
  static Color kirmizi = Colors.red.shade900;
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
    background: _tobetoLightColors.kahve,
    onPrimary: _tobetoLightColors.siyah,
    onSecondary: _tobetoLightColors.krem,
    onSurface: _tobetoLightColors.siyah,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(
    color: _tobetoLightColors.krem,
  ),

  //TextButton Ayarlari
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
      textStyle: const MaterialStatePropertyAll(
        TextStyle(fontSize: font20),
      ),
      foregroundColor: MaterialStatePropertyAll(_tobetoLightColors.krem), //text color
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
final androidDarkTheme = ThemeData(
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
    onSecondary: _tobetoLightColors.krem,
    onSurface: _tobetoLightColors.siyah,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(color: _tobetoLightColors.kahve),

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
      textStyle: const MaterialStatePropertyAll(
        TextStyle(fontSize: font20),
      ),
      foregroundColor: MaterialStatePropertyAll(_tobetoLightColors.krem), //text color
      backgroundColor: MaterialStatePropertyAll(_tobetoLightColors.mor),
    ),
  ),

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: _tobetoLightColors.siyah,
    labelStyle: TextStyle(color: _tobetoLightColors.siyah),
    iconColor: _tobetoLightColors.siyah,
    hintStyle: TextStyle(color: _tobetoLightColors.acikSiyah),
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
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: _tobetoLightColors.kirmizi, width: 2),
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