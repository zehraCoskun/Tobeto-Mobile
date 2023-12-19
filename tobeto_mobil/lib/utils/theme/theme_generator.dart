import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/android_theme.dart';
import 'package:tobeto_mobil/consts/ios_theme.dart';

class ThemeGenerator {
  const ThemeGenerator._();

  static List<ThemeData> generateTheme() {
    if (Platform.isAndroid) {
      return [
        androidLightTheme,
        androidDarkTheme,
      ];
    } else if (Platform.isIOS) {
      return [
        iosLightTheme,
        iosDarkTheme,
      ];
    }
    return [];
  }
}
