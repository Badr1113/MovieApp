import 'package:flutter/material.dart';
import 'color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primaryBackground,
    primaryColor: ColorManager.primaryYellow,
    cardColor: ColorManager.cardBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.primaryBackground,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: ColorManager.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
