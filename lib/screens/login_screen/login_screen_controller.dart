import 'package:flutter_app/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:flutter_app/screens/home_screen/home_screen.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  void goBack() {
    Get.back();
  }

  void goToForgotPasswordScreen() {
    Get.to(() => ForgotPasswordScreen());
  }

  void goToHomeScreen() {
    Get.to(() => HomeScreen());
  }
}
