import 'dart:io';
import 'dart:math';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/user_model.dart';
import 'package:flutter_app/screens/login_screen/login_screen.dart';
import 'package:flutter_app/utilities/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignUpScreenController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isLoading = false;

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  File? image;

  void pickImage(ImageSource imageSource) async {
    try {
      final imagePicker = ImagePicker();
      final pickedImage = await imagePicker.pickImage(source: imageSource);
      if (pickedImage != null) {
        image = File(pickedImage.path);
        update();
      } else {
        showOkAlertDialog(
            context: Get.context!,
            title: 'Error',
            message: 'Image not selected');
      }
    } catch (e) {
      showOkAlertDialog(
          context: Get.context!, title: 'Error', message: e.toString());
    }
  }

  void selectImageFromCameraOrGallery() async {
    Get.defaultDialog(
        title: 'Select Image',
        content: Column(
          children: [
            GestureDetector(
              onTap: () {
                pickImage(ImageSource.camera);
                Get.back();
              },
              child: Row(
                children: [
                  SvgPicture.asset(AppAssets.cameraImage),
                  const SizedBox(width: 10),
                  const Text('Pick Image from camera'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                pickImage(ImageSource.gallery);
                Get.back();
              },
              child: const Row(
                children: [
                  Icon(Icons.image_outlined),
                  SizedBox(width: 10),
                  Text('Select Image from gallery'),
                ],
              ),
            ),
          ],
        ));
  }

  Future<String?> uploadImage() async {
    if (image == null) return null;
    try {
      String fileName =
          "new_app_user_image/${FirebaseAuth.instance.currentUser?.uid ?? ""}.jpg";
      final ref = FirebaseStorage.instance.ref(fileName);
      final uploadTask = await ref.putFile(image!);
      final downloadUrl = await uploadTask.ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      showOkAlertDialog(
          context: Get.context!, title: 'Error', message: e.toString());
      return null;
    }
  }

  void signUp() async {
    final imageUrl = await uploadImage();
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
    } else if (image == null) {
      showOkAlertDialog(
          context: Get.context!,
          title: 'Error',
          message: 'Please select your image');
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
            email: emailController.text,
            image: imageUrl);
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
