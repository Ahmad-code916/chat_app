import 'package:flutter_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => OnboardingScreen());
    });
    super.onInit();
  }
}
