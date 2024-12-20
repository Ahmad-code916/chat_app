import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/models/user_model.dart';
import 'package:flutter_app/screens/login_screen/login_screen.dart';
import 'package:get/get.dart';

class SignUpScreenController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isLoading = false;

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  void signUp() async {
    if (nameController.text.isEmpty) {
      showOkAlertDialog(
          context: Get.context!,
          title: 'Error',
          message: 'Please enter your name');
    } else if (emailController.text.isEmpty) {
      showOkAlertDialog(
          context: Get.context!,
          title: 'Error',
          message: 'Please enter your email');
    } else if (passwordController.text.isEmpty) {
      showOkAlertDialog(
          context: Get.context!,
          title: 'Error',
          message: 'Please enter your password');
    } else if (confirmPasswordController.text.isEmpty) {
      showOkAlertDialog(
          context: Get.context!,
          title: 'Error',
          message: 'Please enter your confirm password');
    } else {
      try {
        isLoading = true;
        update();
        final userCredential =
            await firebaseAuth.createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        final userModel = UserModel(
            uid: userCredential.user?.uid ?? "",
            name: nameController.text,
            email: emailController.text);
        await fireStore
            .collection(UserModel.tableName)
            .doc(userModel.uid)
            .set(userModel.toMap());
        Get.snackbar('Congratulations', 'Account Created Successfully!');
        Get.to(() => LoginScreen());
        isLoading = false;
        update();
        emailController.clear();
        nameController.clear();
        passwordController.clear();
        confirmPasswordController.clear();
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

  void goToLoginScreen() {
    Get.to(() => LoginScreen());
  }
}
