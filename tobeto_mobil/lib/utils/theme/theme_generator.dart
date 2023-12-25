import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/consts/android_theme.dart';
import 'package:tobeto_mobil/consts/ios_theme.dart';

class ThemeGenerator {
  const ThemeGenerator._();

  static ThemeData lightTheme() {
    if (kIsWeb) {
      return iosLightTheme;
    }

    if (Platform.isAndroid || Platform.isWindows) {
      return androidLightTheme;
    }
    return iosLightTheme;
  }

  static ThemeData darkTheme() {
    if (kIsWeb) {
      return iosDarkTheme;
    }

    if (Platform.isAndroid || Platform.isWindows) {
      return androidDarkTheme;
    }
    return iosDarkTheme;
  }
}
