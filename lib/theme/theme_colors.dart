import 'package:flutter/material.dart';

class ThemeColors {
  static const Color moreLight = Color.fromRGBO(223, 236, 252, 1);
  static const Color light = Color.fromRGBO(191, 218, 247, 1);
  static const Color normal = Color.fromRGBO(123, 179, 240, 1);
  static const Color dark = Color.fromRGBO(55, 140, 231, 1);
  static const Color moreDark = Color.fromRGBO(22, 103, 185, 1);
  static const Color myBlack = Color.fromRGBO(110, 110, 110, 1);

  static const MaterialColor myMaterialColor =
      MaterialColor(_myMaterialColorPrimaryValue, <int, Color>{
    50: Color(0xFFE3EDF7),
    100: Color(0xFFB9D1EA),
    200: Color(0xFF8BB3DC),
    300: Color(0xFF5C95CE),
    400: Color(0xFF397EC4),
    500: Color(_myMaterialColorPrimaryValue),
    600: Color(0xFF135FB2),
    700: Color(0xFF1054AA),
    800: Color(0xFF0C4AA2),
    900: Color(0xFF063993),
  });
  static const int _myMaterialColorPrimaryValue = 0xFF1667B9;

  static const MaterialColor myMaterialColorAccent =
      MaterialColor(_myMaterialColorAccentValue, <int, Color>{
    100: Color(0xFFBFD2FF),
    200: Color(_myMaterialColorAccentValue),
    400: Color(0xFF598BFF),
    700: Color(0xFF4079FF),
  });
  static const int _myMaterialColorAccentValue = 0xFF8CAFFF;
}
