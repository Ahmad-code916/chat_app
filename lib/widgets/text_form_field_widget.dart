import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
      ),
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      cursorColor: AppColors.greenColor,
    );
  }
}
