import 'package:flutter/material.dart';

class MyColors {
  static Color mainColor = const Color.fromARGB(255, 230, 230, 230);
  static Color secondaryColor = const Color.fromARGB(255, 255, 255, 255);
  static Color mainTextColor = const Color.fromARGB(255, 40, 40, 40);
  static Color secondaryTextColor = const Color.fromARGB(255, 7, 115, 54);
  static Color otherColor = const Color.fromARGB(255, 129, 48, 242);
  static Color errorColor = const Color.fromARGB(255, 251, 83, 61);
  static Color deneme = const Color.fromARGB(255, 56, 225, 29);
}

ColorScheme myColors = ColorScheme(
  brightness: Brightness.light,
  primary: MyColors.otherColor,
  error: MyColors.errorColor,
  onError: MyColors.mainColor,
  onBackground: MyColors.mainTextColor,
  secondary: MyColors.mainColor,
  surface: MyColors.secondaryColor,
  background: MyColors.mainColor,
  onPrimary: MyColors.secondaryTextColor,
  onSecondary: MyColors.mainTextColor,
  onSurface: MyColors.mainTextColor,
);

/*ColorScheme myColors = ColorScheme(
  brightness: Brightness.light,       // Uygulamanın ışık teması
  primary: MyColors.mainTextColor,    // Birincil renk, örneğin buton rengi, icon rengi
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
