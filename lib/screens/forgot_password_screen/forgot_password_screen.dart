import 'package:flutter/material.dart';
import 'package:flutter_app/screens/forgot_password_screen/forgot_password_screen_controller.dart';
import 'package:flutter_app/widgets/button_widget.dart';
import 'package:get/get.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/app_icons.dart';
import '../../utilities/app_strings.dart';
import '../../widgets/text_form_field_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final ForgotPasswordScreenController controller =
      Get.put(ForgotPasswordScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        controller.goBack();
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 17),
                        child: Icon(AppIcons.backIcon),
                      )),
                  const SizedBox(height: 60),
                  Text(
                    AppStrings.forgotPassword,
                    style: TextStyle(
                        color: AppColors.darkBackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    AppStrings.forgotPasswordText,
                    style: TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
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
                ],
              ),
            ),
            ButtonWidget(
              onTap: () {},
              text: AppStrings.send,
              color: AppColors.greenColor,
              textStyle: TextStyle(color: AppColors.whiteColor),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }
}
