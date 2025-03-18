import 'dart:async';

import 'package:flutter/material.dart';

import '../screens/Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // يتحكم في كل الحركات
  late Animation<Offset> _logoSlideAnimation; // يحرك الشعار للأعلى
  late Animation<double> _logoScaleAnimation; // يصغر حجم الشعار
  late Animation<double> _fadeAnimation; // تأثير الظهور لشاشة تسجيل الدخول

  @override
  void initState() {
    super.initState();

    // إنشاء الـ AnimationController وتحديد المدة الزمنية للحركات
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3), // مدة الحركة 3 ثوانٍ
    );

    // تحريك الشعار من الأسفل للأعلى
    _logoSlideAnimation = Tween<Offset>(
      begin: Offset(0, 2), // يبدأ من تحت
      end: Offset(0, -0.5), // يتحرك للأعلى
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // تصغير حجم الشعار أثناء تحريكه للأعلى
    _logoScaleAnimation = Tween<double>(
      begin: 1.5, // الشعار مكبّر في البداية
      end: 1.0, // يصغر قليلاً
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // تأثير الظهور التدريجي لعناصر شاشة تسجيل الدخول
    _fadeAnimation = Tween<double>(
      begin: 0.0, // غير مرئي في البداية
      end: 1.0, // يظهر بشكل كامل
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.6, 1.0))); // التأخير إلى 60% من مدة الحركة

    _controller.forward(); // تشغيل الحركة

    // الانتقال إلى شاشة تسجيل الدخول بعد 4 ثوانٍ
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // التخلص من الـ controller لتوفير الموارد
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // لون خلفية شاشة السبلاش
      body: Stack(
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.translate(
                  offset:
                      _logoSlideAnimation.value * 100, // تحريك الشعار للأعلى
                  child: Transform.scale(
                    scale:
                        _logoScaleAnimation.value, // تصغير الشعار أثناء الحركة
                    child: child,
                  ),
                );
              },
              child: Image.asset('assets/Mazaj_molasses.png',
                  width: 200), // الشعار (يمكنك استبداله بصورة)
            ),
          ),
        ],
      ),
    );
  }
}

