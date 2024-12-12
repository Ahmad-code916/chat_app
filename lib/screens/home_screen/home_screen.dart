import 'package:flutter/material.dart';
import 'package:flutter_app/screens/calls_screen/calls_screen.dart';
import 'package:flutter_app/screens/contacts_screen/contacts_screen.dart';
import 'package:flutter_app/screens/home_screen/home_screen_controller.dart';
import 'package:flutter_app/screens/message_screen/message_screen.dart';
import 'package:flutter_app/screens/settings_screen/settings_screen.dart';
import 'package:flutter_app/utilities/app_assets.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<HomeScreenController>(builder: (context) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.greenColor,
            unselectedItemColor: AppColors.greyColor,
            currentIndex: controller.selectedIndex,
            onTap: controller.changeIndex,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppAssets.messageImage,
                    colorFilter: ColorFilter.mode(
                        controller.selectedIndex == 0
                            ? AppColors.greenColor
                            : AppColors.greyColor,
                        BlendMode.srcIn),
                  ),
                  label: 'Message'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppAssets.callImage,
                    colorFilter: ColorFilter.mode(
                        controller.selectedIndex == 1
                            ? AppColors.greenColor
                            : AppColors.greyColor,
                        BlendMode.srcIn),
                  ),
                  label: 'Calls'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppAssets.userImage,
                    colorFilter: ColorFilter.mode(
                        controller.selectedIndex == 2
                            ? AppColors.greenColor
                            : AppColors.greyColor,
                        BlendMode.srcIn),
                  ),
                  label: 'Contacts'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppAssets.settingsImage,
                    colorFilter: ColorFilter.mode(
                        controller.selectedIndex == 3
                            ? AppColors.greenColor
                            : AppColors.greyColor,
                        BlendMode.srcIn),
                  ),
                  label: 'Settings'),
            ],
            backgroundColor: AppColors.whiteColor,
            showUnselectedLabels: true,
            unselectedLabelStyle: TextStyle(color: AppColors.blackColor),
            type: BottomNavigationBarType.fixed,
          ),
          body: IndexedStack(
            index: controller.selectedIndex,
            children: [
              MessageScreen(),
              CallsScreen(),
              ContactsScreen(),
              SettingsScreen()
            ],
          ),
        );
      }),
    );
  }
}
