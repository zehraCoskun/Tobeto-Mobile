import 'package:flutter/material.dart';

final theme = ThemeData(
  //useMaterial3: true,

  //ColorScheme Ayarlari
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: const Color.fromARGB(255, 129, 48, 242),
    error: Colors.red.shade900,
    onError: Colors.orange,
    onBackground: Colors.black,
    secondary: Colors.grey,
    surface: Colors.white,
    background: Colors.white70,
    onPrimary: Colors.green.shade900,
    onSecondary: Colors.black,
    onSurface: Colors.black87,
  ),



  //TextButton Ayarlari
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        Colors.transparent,
      ),
      
    ),
  ),

  //ElevatedButton Ayarlari
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 40,
        ),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 20,
        ),
      ),
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
