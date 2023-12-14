import 'package:flutter/material.dart';

class _tobetoColors {
  static Color acikMavi = const Color.fromARGB(255, 175, 192, 204);
  static Color koyuMavi = Colors.brown;
  //const Color.fromARGB(255, 86, 125, 153);
  static Color krem = const Color.fromARGB(255, 245, 254, 253);
  static Color pembe = Color.fromARGB(255, 236, 110, 205);
  static Color kahve = const Color.fromARGB(255, 204, 176, 175);
  static Color mor = const Color.fromARGB(255, 137, 46, 221); //Colors.deepPurple;
  static Color kirmizi = Color.fromARGB(255, 253, 46, 0);
  static Color siyah = Colors.black;
}

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
final lightTheme = ThemeData(
  //useMaterial3: true,

  //ColorScheme Ayarlari
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: _tobetoColors.mor,
    error: _tobetoColors.kirmizi,
    onError: _tobetoColors.krem,
    onBackground: Colors.black,
    secondary: _tobetoColors.kirmizi,
    surface: _tobetoColors.siyah,
    background: _tobetoColors.krem,
    onPrimary: Colors.black,
    onSecondary: _tobetoColors.kahve,
    onSurface: Colors.black87,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(color: _tobetoColors.krem),

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

  //ElevatedButton Ayarlari
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 40,
        ),
      ),
      textStyle: const MaterialStatePropertyAll(
        TextStyle(fontSize: 20),
      ),
      foregroundColor: MaterialStatePropertyAll(_tobetoColors.krem), //text color
    ),
  ),

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: Colors.black,
    iconColor: Colors.black,

    //text field tiklandiginda yani focuslandiginda cikacak border ayarlari
    focusedBorder: OutlineInputBorder(
      //borderRadius = BorderRadius. yazarak istediginizi verebilirsiniz koselerinin seklini cizer
      borderRadius: BorderRadius.circular(16),

      //borderSide = BoderSide() olarak verebilirsiniz etrafindaki
      //borderin kalinligini, rengini vb. ayarlayabilirisiniz
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2,
      ),
    ),

    //text field tiklanmamis haldeykenki cikacak border ayarlari
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.black54, width: 1.5),
    ),

    //text field icerisindeki string de hata oldugundaki cikacak border ayarlari
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.red.shade900, width: 2),
    ),
  ),
);
