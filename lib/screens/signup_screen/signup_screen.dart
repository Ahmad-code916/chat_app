import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signup_screen/signup_screen_controller.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:flutter_app/utilities/app_icons.dart';
import 'package:flutter_app/utilities/app_strings.dart';
import 'package:flutter_app/widgets/button_widget.dart';
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
        child: Column(
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
                    const SizedBox(height: 60),
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
                    const SizedBox(height: 60),
                    Text(
                      AppStrings.yourName,
                      style: TextStyle(
                          color: AppColors.greenColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    const TextFormFieldWidget(),
                    const SizedBox(height: 30),
                    Text(
                      AppStrings.yourEmail,
                      style: TextStyle(
                          color: AppColors.greenColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    const TextFormFieldWidget(),
                    const SizedBox(height: 30),
                    Text(
                      AppStrings.password,
                      style: TextStyle(
                          color: AppColors.greenColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    const TextFormFieldWidget(),
                    const SizedBox(height: 30),
                    Text(
                      AppStrings.confirmPassword,
                      style: TextStyle(
                          color: AppColors.greenColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    const TextFormFieldWidget(),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            ButtonWidget(
              onTap: () {},
              text: 'Create Account',
              color: AppColors.greenColor,
              textStyle: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }
}
