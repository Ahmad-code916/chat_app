import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/screens/home_screen/home_screen.dart';
import 'package:flutter_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        Get.offAll(() => OnboardingScreen());
      } else {
        Get.offAll(() => HomeScreen());
      }
    });
    super.onInit();
  }
}
