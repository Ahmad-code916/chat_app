import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:flutter_app/screens/home_screen/home_screen.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;
  bool isLoading = false;

  void login() async {
    if (emailController.text.isEmpty) {
      showOkAlertDialog(
          context: Get.context!,
          title: 'Error',
          message: 'Please enter your email');
    } else if (passwordController.text.isEmpty) {
      showOkAlertDialog(
          context: Get.context!,
          title: 'Error',
          message: 'Please enter your password');
    } else {
      try {
        isLoading = true;
        update();
        await firebaseAuth.signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
        isLoading = false;
        update();
        Get.snackbar('Congratulations', 'Login Successfully!',
            backgroundColor: AppColors.whiteColor);
        Get.to(() => HomeScreen());
        emailController.clear();
        passwordController.clear();
      } catch (e) {
        isLoading = false;
        update();
        showOkAlertDialog(
            context: Get.context!, title: 'Error', message: e.toString());
      }
    }
  }

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
