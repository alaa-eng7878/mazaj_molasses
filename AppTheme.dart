import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
      primarySwatch: MaterialColor(0xFF000000, {
        50: Color(0xFFE0E0E0),
        100: Color(0xFFB3B3B3),
        200: Color(0xFF808080),
        300: Color(0xFF4D4D4D),
        400: Color(0xFF1A1A1A),
        500: Color(0xFF000000), // اللون الأسود
        600: Color(0xFF000000),
        700: Color(0xFF000000),
        800: Color(0xFF000000),
        900: Color(0xFF000000),
      }),

      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFBBC05),  // اللون الأسود للأزرار
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,  // اللون الأسود للأزرار
        ),
      ),
    );
  }
}
