import 'package:flutter_app/screens/login_screen/login_screen.dart';
import 'package:flutter_app/screens/signup_screen/signup_screen.dart';
import 'package:get/get.dart';

class OnboardingScreenController extends GetxController {
  void goToSignUpScreen() {
    Get.to(() => SignupScreen());
  }

  void goToLoginScreen() {
    Get.to(() => LoginScreen());
  }
}
