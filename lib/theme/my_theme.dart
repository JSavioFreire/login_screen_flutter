import 'package:flutter/material.dart';
import 'package:project/theme/theme_colors.dart';

ThemeData myTheme = ThemeData(
    primarySwatch: ThemeColors.myMaterialColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: ThemeColors.dark,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20))),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: ThemeColors.moreDark,
        selectedItemColor: ThemeColors.moreDark));
