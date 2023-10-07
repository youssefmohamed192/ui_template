import 'package:flutter/material.dart';
import 'package:ui_template/utils/app_colors.dart';

abstract class AppTheme {
  static const TextStyle appBarTitleTextStyle = TextStyle(
      color: AppColors.titleText, fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle screenTextStyle = TextStyle(
      color: AppColors.titleText, fontWeight: FontWeight.w400, fontSize: 18);
  static const TextStyle screenBoldTextStyle = TextStyle(
      color: AppColors.titleText, fontSize: 20, fontWeight: FontWeight.w600);
  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primary,
      selectedItemColor: AppColors.selectedItem,
      unselectedItemColor: AppColors.accent,
      showSelectedLabels: false,
      showUnselectedLabels: false
    ),
    scaffoldBackgroundColor: AppColors.primary
  );
}
