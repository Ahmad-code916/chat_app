import 'package:flutter/material.dart';
import 'package:flutter_app/utilities/app_assets.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:flutter_app/utilities/app_strings.dart';
import 'package:flutter_app/widgets/bottom_sheet_row_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 28, left: 24),
        child: Stack(
          children: [
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.clear)),
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.shareContent,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(height: 24),
                BottomSheetRowWidget(
                  imagePath: AppAssets.cameraImage,
                  text: AppStrings.camera,
                  text2: AppStrings.sendImage,
                  onTap: () {},
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 12),
                  child: Divider(),
                ),
                BottomSheetRowWidget(
                  imagePath: AppAssets.documentImage,
                  text: AppStrings.document,
                  text2: AppStrings.shareFiles,
                  onTap: () {},
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 12),
                  child: Divider(),
                ),
                BottomSheetRowWidget(
                  imagePath: AppAssets.pollImage,
                  text: AppStrings.createPoll,
                  text2: AppStrings.createPollQuery,
                  onTap: () {},
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 12),
                  child: Divider(),
                ),
                BottomSheetRowWidget(
                  imagePath: AppAssets.mediaImage,
                  text: AppStrings.media,
                  text2: AppStrings.shareVideos,
                  onTap: () {},
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 12),
                  child: Divider(),
                ),
                BottomSheetRowWidget(
                  imagePath: AppAssets.contactImage,
                  text: AppStrings.contact,
                  text2: AppStrings.shareContacts,
                  onTap: () {},
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 12),
                  child: Divider(),
                ),
                BottomSheetRowWidget(
                  imagePath: AppAssets.locationImage,
                  text: AppStrings.location,
                  text2: AppStrings.shareLocation,
                  onTap: () {},
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 12),
                  child: Divider(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
