import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen/home_screen.dart';
import 'package:flutter_app/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}