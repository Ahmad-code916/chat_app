import 'package:flutter/material.dart';
import 'package:flutter_app/utilities/app_assets.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:flutter_app/utilities/app_icons.dart';
import 'package:flutter_app/utilities/app_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: AppColors.darkBackColor,
                child: Column(
                  children: [
                    SizedBox(height: 10),
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
