import 'package:flutter/material.dart';
import 'package:orbit_volunteers_flutter/core/constants/colors/app_color.dart';

// app teem class
class AppTheme {


// =========================
// LIGHT THEME
// =========================

static ThemeData lightTheme = ThemeData(
useMaterial3: true,

brightness: Brightness.light,

scaffoldBackgroundColor:AppColor.backgroundColor,

primaryColor:AppColor.primaryColor,

colorScheme: const ColorScheme.light(
primary: AppColor.primaryColor,
secondary: AppColor.accentGreen,
error: AppColor.errorColor,
surface: AppColor.backgroundColor,
),

// =========================
// APP BAR THEME
// =========================

appBarTheme: const AppBarTheme(
backgroundColor: Colors.white,
elevation: 0,
centerTitle: true,
iconTheme: IconThemeData(
color: AppColor.textPrimary,
),
titleTextStyle: TextStyle(
color: AppColor.textPrimary,
fontSize: 20,
fontWeight: FontWeight.w600,
),
),

// =========================
// TEXT THEME
// =========================

textTheme: const TextTheme(
headlineLarge: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
color: AppColor.textPrimary,
),

headlineMedium: TextStyle(
fontSize: 20,
fontWeight: FontWeight.w600,
color: AppColor.textPrimary,
),

titleLarge: TextStyle(
fontSize: 18,
fontWeight: FontWeight.w600,
color: AppColor.textPrimary,
),

bodyLarge: TextStyle(
fontSize: 16,
fontWeight: FontWeight.normal,
color: AppColor.textPrimary,
),

bodyMedium: TextStyle(
fontSize: 14,
fontWeight: FontWeight.normal,
color: AppColor.textSecondary,
),

bodySmall: TextStyle(
fontSize: 12,
fontWeight: FontWeight.normal,
color: AppColor.textSecondary,
),
),

// =========================
// CARD THEME
// =========================

cardTheme: CardThemeData(
color: AppColor.cardColor,
elevation: 0,
shadowColor: Colors.black.withOpacity(0.05),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(16),
),
margin: const EdgeInsets.all(0),
),

// =========================
// ELEVATED BUTTON THEME
// =========================

elevatedButtonTheme: ElevatedButtonThemeData(
style: ElevatedButton.styleFrom(
backgroundColor: AppColor.primaryColor,
foregroundColor: Colors.white,

minimumSize: const Size(double.infinity, 52),

elevation: 0,

shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(14),
),

textStyle: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.w600,
),
),
),

// =========================
// OUTLINED BUTTON THEME
// =========================

outlinedButtonTheme: OutlinedButtonThemeData(
style: OutlinedButton.styleFrom(
foregroundColor: AppColor.textPrimary,

minimumSize: const Size(double.infinity, 52),

side: const BorderSide(
color: AppColor.borderColor,
),

shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(14),
),

textStyle: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.w500,
),
),
),

// =========================
// INPUT DECORATION THEME
// =========================

inputDecorationTheme: InputDecorationTheme(
filled: true,
fillColor: Colors.white,

contentPadding: const EdgeInsets.symmetric(
horizontal: 16,
vertical: 16,
),

hintStyle: const TextStyle(
color: AppColor.textSecondary,
fontSize: 14,
),

border: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
borderSide: const BorderSide(
color: AppColor.borderColor,
),
),

enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
borderSide: const BorderSide(
color: AppColor.borderColor,
),
),

focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
borderSide: const BorderSide(
color: AppColor.primaryColor,
width: 1.5,
),
),

errorBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
borderSide: const BorderSide(
color: AppColor.errorColor,
),
),
),

// =========================
// BOTTOM NAVIGATION BAR
// =========================

bottomNavigationBarTheme: const BottomNavigationBarThemeData(
backgroundColor: Colors.white,

selectedItemColor: AppColor.primaryColor,
unselectedItemColor: AppColor.textSecondary,

selectedLabelStyle: TextStyle(
fontWeight: FontWeight.w600,
fontSize: 12,
),

unselectedLabelStyle: TextStyle(
fontWeight: FontWeight.w500,
fontSize: 12,
),

type: BottomNavigationBarType.fixed,

elevation: 8,
),

// =========================
// FLOATING ACTION BUTTON
// =========================

floatingActionButtonTheme: const FloatingActionButtonThemeData(
backgroundColor: AppColor.primaryColor,
foregroundColor: Colors.white,
elevation: 0,
),

// =========================
// DIVIDER THEME
// =========================

dividerTheme: const DividerThemeData(
color: AppColor.borderColor,
thickness: 1,
space: 1,
),

// =========================
// ICON THEME
// =========================

iconTheme: const IconThemeData(
color: AppColor.textPrimary,
size: 24,
),
);
}
