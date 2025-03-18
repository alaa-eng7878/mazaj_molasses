// شاشة تسجيل الدخول
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // لون الخلفية أبيض
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("تسجيل الدخول",
                style: TextStyle(
                    fontSize: 24, color: Colors.black)), // عنوان الصفحة
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "البريد الإلكتروني",
                    labelStyle: TextStyle(
                        color: Colors.black)), // حقل إدخال البريد الإلكتروني
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(labelText: "كلمة المرور"),
                obscureText: true, // إخفاء النص عند الكتابة لكلمة المرور
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                child: Text("تسجيل الدخول")), // زر تسجيل الدخول
            TextButton(
                onPressed: () {},
                child: Text(
                    "أو سجل الدخول عبر Google")), // زر تسجيل الدخول عبر Google
          ],
        ),
      ),
    );
  }
}
