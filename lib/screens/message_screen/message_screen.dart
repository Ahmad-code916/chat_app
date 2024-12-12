import 'package:flutter/material.dart';
import 'package:flutter_app/screens/message_screen/message_screen_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utilities/app_assets.dart';
import '../../utilities/app_colors.dart';
import '../../utilities/app_icons.dart';
import '../../utilities/app_strings.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  final MessageScreenController controller = Get.put(MessageScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: GetBuilder<MessageScreenController>(builder: (context) {
        return Column(
          children: [
            Expanded(
              child: Container(
                color: AppColors.darkBackColor,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColors.whiteColor)),
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      SvgPicture.asset(AppAssets.searchImage)),
                            ),
                          ),
                          Text(
                            AppStrings.home,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              AppAssets.boyImage,
                              height: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 47),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: AppColors.greenColor)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: Image.asset(AppAssets.boyImage,
                                            height: 50),
                                      ),
                                    ),
                                    Positioned(
                                      top: 40,
                                      right: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.whiteColor,
                                            shape: BoxShape.circle),
                                        child: Center(
                                          child: Padding(
                                              padding: const EdgeInsets.all(1),
                                              child: Icon(
                                                AppIcons.addIcon,
                                                size: 17,
                                                color: AppColors.blackColor,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'My Status',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            const SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: AppColors.greenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Image.asset(AppAssets.boyImage,
                                        height: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Name',
                                  style: TextStyle(color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            const SizedBox(width: 16),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
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
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 30),
                                      child: GestureDetector(
                                        onTap: () {
                                          controller.goToChatScreen();
                                        },
                                        child: Container(
                                          color: AppColors.whiteColor,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const CircleAvatar(
                                                    radius: 30,
                                                    backgroundImage:
                                                        ExactAssetImage(
                                                            AppAssets.boyImage),
                                                  ),
                                                  const SizedBox(width: 12),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        AppStrings
                                                            .alexLinderson,
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .blackColor,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 20),
                                                      ),
                                                      Text(
                                                        AppStrings.howAreYou,
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .greyColor,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(AppStrings.messageTime,
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .greyColor,
                                                          fontSize: 12)),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.redColor,
                                                        shape: BoxShape.circle),
                                                    child: Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8),
                                                        child: Text(
                                                          '4',
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .whiteColor),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
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
