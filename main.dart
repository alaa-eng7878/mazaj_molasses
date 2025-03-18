import 'package:flutter/material.dart';
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
      home: SplashScreen(), // بداية التطبيق مع شاشة السبلاش
    );
  }
}