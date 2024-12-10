import 'package:flutter_app/screens/login_screen/login_screen.dart';
import 'package:get/get.dart';

class SignUpScreenController extends GetxController {
  void goBack() {
    Get.back();
  }

  void goToLoginScreen() {
    Get.to(() => LoginScreen());
  }
}
