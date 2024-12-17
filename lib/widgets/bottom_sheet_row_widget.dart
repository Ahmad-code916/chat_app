import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utilities/app_assets.dart';
import '../utilities/app_colors.dart';
import '../utilities/app_strings.dart';

class BottomSheetRowWidget extends StatelessWidget {
  const BottomSheetRowWidget({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap, required this.text2,
  });

  final String imagePath;
  final String text;
  final String text2;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.lightGreenColorFour, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                imagePath,
                colorFilter:
                    ColorFilter.mode(AppColors.greyColor, BlendMode.srcIn),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 2),
              Text(
                text2,
                style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
