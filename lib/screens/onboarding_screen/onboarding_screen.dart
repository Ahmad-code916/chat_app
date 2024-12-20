import 'package:flutter/material.dart';
import 'package:flutter_app/screens/onboarding_screen/onboarding_screen_controller.dart';
import 'package:flutter_app/utilities/app_assets.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:flutter_app/utilities/app_strings.dart';
import 'package:flutter_app/widgets/button_widget.dart';
import 'package:flutter_app/widgets/svg_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final OnboardingScreenController controller =
      Get.put(OnboardingScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(AppAssets.onBoardingScreen),
                  fit: BoxFit.cover)),
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 17),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      AppAssets.logoImage,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 44),
                  Text(
                    AppStrings.connectFriend,
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 60,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    AppStrings.ourChatApp,
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 38),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPictureWidget(
                        svgPicture: SvgPicture.asset(AppAssets.facebookIcon),
                        color: AppColors.whiteColor,
                      ),
                      const SizedBox(width: 20),
                      SvgPictureWidget(
                        svgPicture: SvgPicture.asset(AppAssets.googleIcon),
                        color: AppColors.whiteColor,
                      ),
                      const SizedBox(width: 20),
                      SvgPictureWidget(
                        svgPicture: SvgPicture.asset(AppAssets.appleIcon),
                        color: AppColors.whiteColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 38),
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.lineImage),
                      const SizedBox(width: 18),
                      Text(
                        AppStrings.or,
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                      const SizedBox(width: 18),
                      SvgPicture.asset(AppAssets.lineImage),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ButtonWidget(
                      onTap: () {
                        controller.goToSignUpScreen();
                      },
                      text: AppStrings.signUpWithEmail,
                      color: AppColors.whiteColor,
                      textStyle: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.alreadyHaveAccount,
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.goToLoginScreen();
                        },
                        child: Text(
                          AppStrings.login,
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
