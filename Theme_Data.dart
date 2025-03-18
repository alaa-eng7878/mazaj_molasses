import 'package:flutter/material.dart';


ThemeData appTheme() {
  return ThemeData(
    // تخصيص اللون الأساسي
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

    // تخصيص الخط
    fontFamily: 'Arial',

    // تخصيص خلفية التطبيق
    scaffoldBackgroundColor: Colors.white,

    // تخصيص لون الـ AppBar
    appBarTheme: AppBarTheme(
      color: Colors.black, // اللون الأسود للـ AppBar
      elevation: 0, // إزالة الظل
    ),

    // تخصيص أزرار التطبيق
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black, // اللون الأسود للأزرار
      shape: RoundedRectangleBorder( // شكل الأزرار
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
