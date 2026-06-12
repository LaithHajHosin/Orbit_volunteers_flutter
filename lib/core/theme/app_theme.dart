import 'package:flutter/material.dart';
import 'package:orbit_volunteers_flutter/core/constants/colors/app_color.dart';

// app teem class
class AppTheme {
  // we define the light teem here
  static final lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primaryBlue,
    scaffoldBackgroundColor: AppColors.white,
    
    // settings for the app bar
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryBlue,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),

    // text teem settings
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryBlue,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
    ),

    // button teem settings
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50), // size of button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
