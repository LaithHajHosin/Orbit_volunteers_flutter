import 'package:flutter/material.dart';

class MyTheme {
  // Using the light blue from the logo images
  static const Color primaryBlue = Color(0xFF3AB2E8); 
  static const Color secondaryBlue = Color(0xFF0091EA);
  
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryBlue,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryBlue,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: primaryBlue,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black87,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
