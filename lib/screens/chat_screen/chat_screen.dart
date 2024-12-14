import 'package:flutter/material.dart';
import 'package:flutter_app/screens/chat_screen/chat_screen_controller.dart';
import 'package:flutter_app/utilities/app_assets.dart';
import 'package:flutter_app/utilities/app_colors.dart';
import 'package:flutter_app/utilities/app_strings.dart';
import 'package:flutter_app/widgets/message_container_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final ChatScreenController controller = Get.put(ChatScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: GetBuilder<ChatScreenController>(builder: (controller) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [BoxShadow(color: AppColors.blackColor)]),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 24, right: 24, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.arrow_back),
                        const SizedBox(width: 10),
                        Stack(
                          children: [
                            const CircleAvatar(
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
                        const SizedBox(width: 14),
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
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: AppColors.whiteColor,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      MessageContainerWidget(isSender: true),
                      MessageContainerWidget(isSender: false),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [BoxShadow(color: AppColors.lightGreenColor)]),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 25, bottom: 25),
                child: Row(
                  children: [
                    SvgPicture.asset(AppAssets.clipImage),
                    SizedBox(width: 7),
                    Expanded(
                      child: TextFormField(
                        controller: controller.textController,
                        onChanged: controller.onChange,
                        minLines: 1,
                        maxLines: null,
                        decoration: InputDecoration(
                            suffixIcon: SvgPicture.asset(AppAssets.fileImage),
                            suffixIconConstraints: const BoxConstraints(),
                            fillColor: AppColors.greyColorSecond,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.greyColorSecond),
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.greyColorSecond),
                                borderRadius: BorderRadius.circular(12)),
                            hintText: 'Write your message',
                            hintStyle: TextStyle(color: AppColors.greyColor)),
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    controller.textController.text.isEmpty
                        ? Row(
                            children: [
                              SvgPicture.asset(AppAssets.cameraImage),
                              const SizedBox(width: 12),
                              SvgPicture.asset(AppAssets.microphoneImage),
                            ],
                          )
                        : Icon(Icons.send),
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
