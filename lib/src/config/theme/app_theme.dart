import 'package:flutter/material.dart';
import 'package:twitty/src/config/theme/app_colors.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
      fontFamily: 'Chirp',
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.extraLightGrey,
      cardColor: AppColors.extraExtraLightGrey,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        elevation: 3,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.3,
          color: AppColors.extraExtraLightGrey,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.extraExtraLightGrey,
        elevation: 3,
        type: BottomNavigationBarType.shifting,
        selectedLabelStyle: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColors.darkGrey,
          fontWeight: FontWeight.w500,
        ),
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.blackColor,
      ),
      textTheme: const TextTheme(),
    );
  }
}
