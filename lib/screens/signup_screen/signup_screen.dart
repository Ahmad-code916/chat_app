import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signup_screen/signup_screen_controller.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:flutter_app/utilities/app_icons.dart';
import 'package:flutter_app/utilities/app_strings.dart';
import 'package:flutter_app/widgets/text_form_field_widget.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final SignUpScreenController controller = Get.put(SignUpScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 17, left: 24, right: 24),
        child: GetBuilder<SignUpScreenController>(builder: (context) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            controller.goBack();
                          },
                          child: const Icon(AppIcons.backIcon)),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          AppStrings.signUpWithEmail,
                          style: TextStyle(
                              color: AppColors.darkBackColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          textAlign: TextAlign.center,
                          AppStrings.getChatting,
                          style: TextStyle(
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: controller.image != null
                                  ? FileImage(controller.image!)
                                  : null,
                            ),
                            Positioned(
                              right: 10,
                              bottom: 3,
                              child: GestureDetector(
                                onTap: () {
                                  controller.pickImage();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.greenColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: AppColors.whiteColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        AppStrings.yourName,
                        style: TextStyle(
                            color: AppColors.greenColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      TextFormFieldWidget(
                        controller: controller.nameController,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        AppStrings.yourEmail,
                        style: TextStyle(
                            color: AppColors.greenColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      TextFormFieldWidget(
                        controller: controller.emailController,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        AppStrings.password,
                        style: TextStyle(
                            color: AppColors.greenColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      TextFormFieldWidget(
                        controller: controller.passwordController,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        AppStrings.confirmPassword,
                        style: TextStyle(
                            color: AppColors.greenColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      TextFormFieldWidget(
                        controller: controller.confirmPasswordController,
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              GetBuilder<SignUpScreenController>(builder: (context) {
                return GestureDetector(
                  onTap: () {
                    controller.signUp();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.greenColor,
                    ),
                    child: controller.isLoading
                        ? Center(
                            child: CircularProgressIndicator(
                              color: AppColors.whiteColor,
                            ),
                          )
                        : Text(
                            'Create Account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                  ),
                );
              }),
              const SizedBox(height: 40),
            ],
          );
        }),
      ),
    ));
  }
}
