import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login_screen/login_screen.dart';
import 'package:flutter_app/screens/message_screen/message_screen_controller.dart';
import 'package:flutter_app/screens/settings_screen/settings_screen_controller.dart';
import 'package:flutter_app/utilities/user_base_conroller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utilities/app_assets.dart';
import '../../utilities/app_colors.dart';
import '../../utilities/app_icons.dart';
import '../../utilities/app_strings.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final SettingsScreenController controller =
      Get.put(SettingsScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: GetBuilder<SettingsScreenController>(builder: (context) {
        return Column(
          children: [
            Expanded(
              child: Container(
                color: AppColors.darkBackColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 5),
                          child: GestureDetector(
                            onTap: () {
                              controller.goBack();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              AppStrings.settings,
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 41, left: 24, right: 24),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  // CircleAvatar(
                                  //   radius: 28,
                                  //   backgroundImage: NetworkImage(
                                  //       UserBaseController.userData.image ??
                                  //           ""),
                                  // ),
                                  const SizedBox(width: 12),
                                  Column(
                                    children: [
                                      Text(UserBaseController.userData.name ??
                                          "")
                                    ],
                                  )
                                ],
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.showDialogue();
                                  },
                                  child: const Text('Change Language')),
                              GestureDetector(
                                  onTap: () {
                                    FirebaseAuth.instance.signOut();
                                    Get.offAll(() => LoginScreen());
                                  },
                                  child: const Text('Logout'))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      }),
    ));
  }
}
