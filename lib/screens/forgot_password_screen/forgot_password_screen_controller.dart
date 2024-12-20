import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreenController extends GetxController {
  final TextEditingController emailController = TextEditingController();

  void goBack() {
    Get.back();
  }
}
