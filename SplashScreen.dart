import 'dart:async';
import 'package:flutter/material.dart';
import '../screens/Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _logoSlideAnimation;
  late Animation<double> _logoScaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // إنشاء الـ AnimationController وتحديد المدة الزمنية للحركات
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    // تحريك الشعار من الأسفل للأعلى
    _logoSlideAnimation = Tween<Offset>(
      begin: Offset(0, 2), // يبدأ من تحت
      end: Offset(0, 0),   // يتحرك للأعلى (إلى نقطة البداية)
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // تصغير حجم الشعار أثناء تحريكه للأعلى
    _logoScaleAnimation = Tween<double>(
      begin: 1.5, // الشعار مكبّر في البداية
      end: 1.0,   // يصغر قليلاً
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // تأثير الظهور التدريجي لعناصر شاشة تسجيل الدخول
    _fadeAnimation = Tween<double>(
      begin: 0.0, // غير مرئي في البداية
      end: 1.0,   // يظهر بشكل كامل
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
                  offset: _logoSlideAnimation.value, // تحريك الشعار للأعلى
                  child: Transform.scale(
                    scale: _logoScaleAnimation.value, // تصغير الشعار أثناء الحركة
                    child: FadeTransition(
                      opacity: _fadeAnimation, // تطبيق التأثير التدريجي للظهور
                      child: child,
                    ),
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
