import 'package:flutter/material.dart';
import 'Login screen/SplashScreen.dart';
import 'Theme_Data.dart';

void main() {
  runApp(MyApp());
}

// الكلاس الرئيسي للتطبيق
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // إخفاء شريط "debug"
      theme: AppTheme.theme, // استخدام Theme من Theme_Data.dart
      home: SplashScreen(), // بداية التطبيق مع شاشة السبلاش
    );
  }
}
