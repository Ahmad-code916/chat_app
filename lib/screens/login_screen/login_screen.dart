import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login_screen/login_screen_controller.dart';
import 'package:flutter_app/widgets/button_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utilities/app_assets.dart';
import '../../utilities/app_colors.dart';
import '../../utilities/app_icons.dart';
import '../../utilities/app_strings.dart';
import '../../widgets/svg_picture.dart';
import '../../widgets/text_form_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginScreenController controller = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
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
                        child: const Padding(
                          padding: EdgeInsets.only(top: 17),
                          child: Icon(AppIcons.backIcon),
                        )),
                    const SizedBox(height: 60),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        AppStrings.loginToChatBox,
                        style: TextStyle(
                            color: AppColors.darkBackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 22),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        AppStrings.welcomeBack,
                        style: TextStyle(
                            color: AppColors.greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPictureWidget(
                          svgPicture: SvgPicture.asset(AppAssets.facebookIcon),
                          color: AppColors.darkBackColor,
                        ),
                        const SizedBox(width: 20),
                        SvgPictureWidget(
                          svgPicture: SvgPicture.asset(AppAssets.googleIcon),
                          color: AppColors.darkBackColor,
                        ),
                        const SizedBox(width: 20),
                        SvgPictureWidget(
                          svgPicture: SvgPicture.asset(
                              AppAssets.appleImageBlack,
                              height: 25),
                          color: AppColors.darkBackColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        SvgPicture.asset(AppAssets.lineImage,
                            color: AppColors.greyColor),
                        const SizedBox(width: 18),
                        Text(
                          AppStrings.or,
                          style: TextStyle(color: AppColors.greyColor),
                        ),
                        const SizedBox(width: 18),
                        SvgPicture.asset(AppAssets.lineImage,
                            color: AppColors.greyColor),
                      ],
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
                  ],
                ),
              ),
            ),
            GetBuilder<LoginScreenController>(builder: (context) {
              return GestureDetector(
                onTap: () {
                  controller.login();
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
                          'Log in',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                ),
              );
            }),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                controller.goToForgotPasswordScreen();
              },
              child: Text(
                AppStrings.forgotPassword,
                style: TextStyle(color: AppColors.greenColor),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }
}
