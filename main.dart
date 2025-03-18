import 'package:flutter/material.dart';
import 'Theme_Data.dart';  // استيراد ملف theme_data.dart
import 'Login screen/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

// الكلاس الرئيسي للتطبيق
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // إخفاء شريط "debug"
      theme: appTheme(), // استخدام Theme من Theme_Data.dart
      home: SplashScreen(), // بداية التطبيق مع شاشة السبلاش
    );
  }
}
