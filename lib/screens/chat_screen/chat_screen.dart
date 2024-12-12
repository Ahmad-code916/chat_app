import 'package:flutter/material.dart';
import 'package:flutter_app/utilities/app_assets.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:flutter_app/utilities/app_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: AppColors.whiteColor),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 24, right: 24, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 10),
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                ExactAssetImage(AppAssets.boyImage),
                          ),
                          Positioned(
                            right: 2,
                            bottom: 0,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.lightGreenColor),
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 14),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.alexLinderson,
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            AppStrings.activeNow,
                            style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.voiceCallImage),
                      const SizedBox(width: 16),
                      SvgPicture.asset(AppAssets.videoCallImage)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
