import 'package:flutter/material.dart';
import 'package:flutter_app/utilities/app_colors.dart';

class MessageContainerWidget extends StatelessWidget {
  const MessageContainerWidget({super.key, required this.isSender});

  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isSender
          ? const EdgeInsets.only(left: 170)
          : const EdgeInsets.only(right: 170),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isSender
                  ? AppColors.lightGreenColorTwo
                  : AppColors.lightGreenColorThree,
              borderRadius: BorderRadius.only(
                topLeft: isSender ? Radius.circular(20) : Radius.circular(0),
                topRight: isSender ? Radius.circular(0) : Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Text(
              'Hello! John How are you?',
              style: TextStyle(
                  color: isSender ? AppColors.whiteColor : AppColors.blackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            '09:25 AM',
            style: TextStyle(color: AppColors.greyColor, fontSize: 12),
          )
        ],
      ),
    );
  }
}
