import 'package:flutter/material.dart';
import 'package:flutter_app/screens/splash_screen/splash_screen_controller.dart';
import 'package:flutter_app/utilities/app_assets.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: AppColors.greenColor,
        child: Center(
          child: SvgPicture.asset(AppAssets.splashImage),
        ),
      ),
    ));
  }
}
